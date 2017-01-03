\version "2.19.49"

\include "a.ly"
\include "b.ly"
\include "c.ly"
\include "d.ly"

#(ly:set-option 'point-and-click #f)
#(set-default-paper-size "letter")

\header {
  title = \markup \smallCaps { "Edláfe Efálde" }
  composer = "Patrick McCarty"
  opus = \markup \tiny { "June 2007 (Reconstructed January 2017)" }
  copyright = \markup \fontsize #-3 {
    "This score is dedicated to the public domain. See https://creativecommons.org/publicdomain/zero/1.0/"
  }
}

\paper {
  indent = #0
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  %annotate-spacing = ##t
}

global = {
  \tempo "Robotic, in strict meter"
  \time 7/8
  s8 s8*97
  \time 11/8
  s8*5
  s8
  s8*5
  \time 7/8
  s8*97 s8
  \bar "|."
}

dynamics = {
  \time 7/8
  % FIXME: dynamic text collides with hairpin
  % should be "s8 _ \pp s8*97 \<"
  s8 _ \pp s8 s8*96 \<
  \time 11/8
  s8*5
  s8 _ \ff
  % FIXME: dynamic text too close to hairpin
  % should be "s8*5 \>"
  s8 s8*4 \>
  \time 7/8
  % FIXME: dynamic text collides with final barline
  % should be "s8*97 s8 _ \pp"
  s8*91 s8 _ \pp s8*6
  \bar "|."
}

% P:  843e0762t915
% I:  801549t2673e
% R:  519t2670e348
% RI: e3762t945108

\score {
  \new PianoStaff <<
    \accidentalStyle Score.dodecaphonic
    \new Staff <<
      \global
      {
        \new Voice \with {
          \remove "Note_heads_engraver"
          \consists "Completion_heads_engraver"
        }
        \relative c''' {
          \voiceOne
          \stemUp
          % red
          %\voiceOneStyle
          \partA
        }
      }
      {
        \new Voice \with {
          \remove "Note_heads_engraver"
          \consists "Completion_heads_engraver"
        }
        \relative c' {
          \voiceThree
          \stemDown
          % green
          %\voiceThreeStyle
          \partC
        }
      }
    >>
    \new Dynamics \dynamics
    \new Staff <<
      \clef "bass"
      \global
      {
        \new Voice \with {
          \remove "Note_heads_engraver"
          \consists "Completion_heads_engraver"
        }
        \relative c {
          \voiceFour
          \stemUp
          % pink
          %\voiceFourStyle
          \partB
        }
      }
      {
        \new Voice \with {
          \remove "Note_heads_engraver"
          \consists "Completion_heads_engraver"
        }
        \relative c {
          \voiceTwo
          \stemDown
          % blue
          %\voiceTwoStyle
          \partD
        }
      }
    >>
  >>
}


% vim: ft=lilypond sw=2 et sts=2
