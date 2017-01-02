\version "2.19.49"

#(ly:set-option 'point-and-click #f)
#(set-default-paper-size "letter")

\header {
  title = "Prelude"
  composer = "Patrick McCarty"
  opus = \markup \smaller { "December 2006" }
  copyright = \markup \fontsize #-3 {
    "This score is dedicated to the public domain. See https://creativecommons.org/publicdomain/zero/1.0/"
  }
}

\paper {
  %annotate-spacing = ##t
}

\score {
  \new PianoStaff {
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
    <<
      \new Staff {
        \numericTimeSignature
        \time 4/4
        \key e \major
        \relative c'' {
          b8 e16 dis e8 gis16 fis gis8 e b e
          cis8 fis16 e fis8 a16 gis a8 fis cis fis
          b, fis'16 e fis8 a16 gis a8 fis b, fis'
          b, e16 dis e8 gis16 fis gis8 e b e
          cis e16 dis e8 a16 gis a8 e cis e
          cis dis16 cis dis8 a'16 gis a8 dis, cis dis
          b dis16 cis dis8 gis16 fis gis8 dis b dis
          b cis16 b cis8 gis'16 fis gis8 cis, b cis
          a cis16 b cis8 fis16 eis fis8 cis a cis
          b d16 cis d8 gis16 fis gis8 d b d
          b cis16 b cis8 gis'16 fis gis8 cis, b cis
          a cis16 b cis8 fis16 eis fis8 cis a cis
          cis fis16 eis fis8 a16 gis a8 fis cis fis
          b, eis16 dis eis8 gis16 fis gis8 eis b eis
          a, cis16 b cis8 fis16 eis fis8 cis a cis
          gis d'16 cis d8 e16 d e8 d gis, d'
          a cis16 b cis8 e16 d e8 cis a cis
          a cis16 b cis8 fis16 e fis8 cis a cis
          a dis16 cis dis8 fis16 e fis8 dis a dis
          gis, b16 a b8 e16 dis e8 b gis b
          a cis16 b cis8 fis16 e fis8 cis a cis
          b dis16 cis dis8 fis16 e fis8 dis b dis
          b e16 dis e8 gis16 fis gis8 e b e
          cis e16 dis e8 fis16 e fis8 e cis e
          b e16 dis e8 gis16 fis gis8 e b e
          cis fis16 e fis8 a16 gis a8 fis cis fis
          b, dis16 cis dis8 a'16 gis a8 dis, b dis
          b e16 dis e8 gis16 fis gis8 e b e
          a, dis16 cis dis8 fis16 e fis8 dis a dis
          gis, b16 a b8 e16 dis e8 b gis b
          a c16 b c8 dis16 cisis dis8 c a c
          g! b16 a b8 e16 dis e8 b g b
          fis b16 a b8 e16 dis e8 b fis b
          fis b16 a b8 dis16 cis dis8 b fis b
          e, gis16 fis gis8 d'16 cis d8 gis, e gis
          e a16 gis a8 cis16 b cis8 a e a
          fis b16 a b8 dis16 cis dis8 b fis b
          \override Voice.Arpeggio.transparent = ##t
          <gis b e>1\arpeggio \bar "|."
        }
      }
      \new Staff {
        \clef bass
        \numericTimeSignature
        \time 4/4
        \key e \major
        \relative c {
          e,4. e'16 dis e8 r e, r
          e4. fis'16 e fis8 r e, r
          dis4. fis'16 e fis8 r dis, r
          e4. e'16 dis e8 r e, r
          a4. cis'16 b cis8 r a, r
          fis4. fis'16 e fis8 r fis, r
          gis4. b'16 a b8 r gis, r
          eis4. eis'16 dis eis8 r eis, r
          fis4. a'16 gis a8 r fis, r
          fis4. b'16 a b8 r fis, r
          eis4. eis'16 dis eis8 r eis, r
          fis4. a'16 gis a8 r fis, r
          fis4. fis'16 eis fis8 r fis, r
          gis4. b'16 a b8 r gis, r
          a4. a'16 gis a8 r a, r
          b4. gis'16 fis gis8 r b, r
          cis4. cis'16 b cis8 r cis, r
          a4. a'16 gis a8 r a, r
          b4. a'16 gis a8 r b, r
          e4. gis16 fis gis8 r e r
          b4. a'16 gis a8 r b, r
          a4. a'16 gis a8 r a, r
          gis4. b'16 a b8 r gis, r
          ais4. ais'16 gis ais8 r ais, r
          b4. e16 dis e8 r b r
          b4. fis'16 e fis8 r b, r
          b4. fis'16 e fis8 r b, r
          b4. e16 dis e8 r b r
          b4. dis16 cis dis8 r b r
          b4. gis'16 fis gis8 r b, r
          b4. fis'16 eis fis8 r b, r
          b4. g'!16 fis g8 r b, r
          b4. cis'16 b cis8 r b, r
          b4. b'16 a b8 r b, r
          e,4. b''16 a b8 r e,, r
          e4. a'16 gis a8 r e, r
          e4. b''16 a b8 r e,, r
          e1 \bar "|."
        }
      }
    >>
  }
}


% vim: ft=lilypond sw=2 et sts=2
