\version "2.24.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% \makeOctaves %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Adds notes one or more octaves above or below the notes/chords given in the
%%% music expression.
%%%
%%% First arg: an integer (e.g. 1 = "one octave above", -1 = "one octave below")
%%% Second arg: a music expression
%%%
%%% From a public domain snippet at http://lsr.di.unimi.it/LSR/Snippet?id=445
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define (octave-up m t)
   (let* ((octave (1- t))
          (new-note (ly:music-deep-copy m))
          (new-pitch
            (ly:make-pitch octave
                           (ly:pitch-notename
                             (ly:music-property m 'pitch))
                           (ly:pitch-alteration
                             (ly:music-property m 'pitch)))))
   (set! (ly:music-property new-note 'pitch) new-pitch)
   new-note))

#(define (octavize-chord elements t)
   (cond
     ((null? elements) elements)
     ((eq? (ly:music-property (car elements) 'name) 'NoteEvent)
        (cons (car elements)
              (cons (octave-up (car elements) t)
                    (octavize-chord (cdr elements) t))))
     (else
       (cons (car elements)
             (octavize-chord (cdr elements) t)))))

#(define (octavize music t)
   (if (eq? (ly:music-property music 'name) 'EventChord)
       (ly:music-set-property! music
                               'elements
                               (octavize-chord
                                 (ly:music-property music 'elements) t)))
   music)

makeOctaves = #(define-music-function (arg mus) (integer? ly:music?)
                 (music-map (lambda (x) (octavize x arg))
                            (event-chord-wrap! mus)))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% End \makeOctaves %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% \addStacc %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Defines a music function that adds a staccato articulation to all
%%% notes/chords in the music expression passed as an argument.
%%%
%%% From a public domain snippet at http://lsr.di.unimi.it/LSR/Snippet?id=82
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define (make-script x)
   (make-music 'ArticulationEvent
               'articulation-type x))

#(define (add-script m x)
   (case (ly:music-property m 'name)
     ((NoteEvent) (set! (ly:music-property m 'articulations)
                        (append (ly:music-property m 'articulations)
                                (list (make-script x))))
                   m)
     ((EventChord) (set! (ly:music-property m 'elements)
                         (append (ly:music-property m 'elements)
                                 (list (make-script x))))
                    m)
     (else #f)))

#(define (add-staccato m)
   ;; Remark: since 2.23.6 use symbol 'staccato not a string
   (add-script m 'staccato))

addStacc = #(define-music-function (music) (ly:music?)
              (map-some-music add-staccato music))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% End \addStacc %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
