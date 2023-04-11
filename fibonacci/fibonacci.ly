%%% SPDX-FileCopyrightText: 2009 Patrick McCarty <pnorcks@gmail.com>
%%%
%%% SPDX-License-Identifier: CC0-1.0

\version "2.24.0"

\include "english.ly"
\include "left.ly"
\include "right.ly"
\include "dynamics.ly"
\include "functions.ly"

#(ly:set-option 'point-and-click #f)
#(set-default-paper-size "letter")

\header {
  title = \markup \fontsize #8 { fibonacci }
  composer = "Patrick McCarty"
  opus = "June 2009"
  copyright = \markup \fontsize #-3 {
    "This score is dedicated to the public domain. See https://creativecommons.org/publicdomain/zero/1.0/"
  }
}

\paper {
  indent = #0
  ragged-last-bottom = ##f
  %annotate-spacing = ##t
}

%%% Music is defined in variables %%%

%%% BEGIN score output %%%
\score {
  \new PianoStaff = "pianostaff" <<
    \new Staff = "RH" {
      \accidentalStyle Score.piano
      \clef "treble"
      \numericTimeSignature
      \time 1/1
      \upper
    }

    \new Dynamics = "Dynamics_pf" \dynamics

    \new Staff = "LH" {
      \clef "bass"
      \numericTimeSignature
      \time 1/1
      \lower
    }
  >>

  \layout {
    \context {
      \Score
      \override Arpeggio.X-extent = #'(-1 . 1)
    }

  }
}


% vim: ft=lilypond sw=2 et sts=2
