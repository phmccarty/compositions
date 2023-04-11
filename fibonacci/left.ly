%%% SPDX-FileCopyrightText: 2009 Patrick McCarty <pnorcks@gmail.com>
%%%
%%% SPDX-License-Identifier: CC0-1.0

\version "2.24.0"

\include "functions.ly"

lower = \absolute {
  \ottava #-1
  cs,,1-> _ \sfz | % m. 1
  R1 | % m. 2
  \ottava #0
  d1-> _ \sfz | % m. 3
  R1 | % m. 4
  f'1-> _ \sfz | % m. 5
  R1 ^ \fermata | % m. 6
  \time 4/4
  \relative c, {
    \stemDown
    \tieDown
    cs4 cs d4. ef8 | % m. 7
    f2. gs4 | % m. 8
    cs2 a4 bf | % m. 9
    g2 f4 c | % m. 10
    f4. f8 bf4 ef | % m. 11
    df2 ~ df8 e, _ ( f a | % m. 12
    d2. ) b4 | % m. 13
    cs2 c ~ | % m. 14
    c4 af8. f16 ef4 d | % m. 15
    \stemNeutral
    \tieNeutral
    cs4 cs d4. ef8 | % m. 16
    f2. af4 | % m. 17
    df2 a4 bf | % m. 18
    g2 f4 c | % m. 19
    f4. f8 bf4 ef | % m. 20
    df2 ~ df8 e, f a | % m. 21
    d2. b4 | % m. 22
    \makeOctaves #-1 { cs2 c } | % m. 23

    % second time (two voices)
    <<
      {
        \voiceOne
        d8\rest f, e f g af bf c | % m. 24
        df8 c ef df c df ef f | % m. 25
        g8 f ef e d e d ef | % m. 26
        d8 b c bf af g af bf | % m. 27
        c8 d ef f g f af g | % m. 28
        g8 f f ef df r8 r4 | % m. 29
        r8 af'8 ( g f ef ) f ef f | % m. 30
        \repeat unfold 4 { ef8 f } | % m. 31
        \time 5/4
        \repeat unfold 5 { ef8 f } | % m. 32
      }
      \\
      {
        \voiceTwo
        cs,4 cs d4. ef8 | % m. 24
        f2. af4 | % m. 25
        df2 a4 bf | % m. 26
        g2 f4 c | % m. 27
        f4. f8 bf4 ef | % m. 28
        df2 ~ df8 e, f a | % m. 29
        d2. b4 | % m. 30
        df2 c | % m. 31
        df2 c2. | % m. 32
      }
    >>
    %% must return to a single voice
    \oneVoice

    \time 3/4
    \repeat unfold 3 { ef8 f } | % m. 33
    \repeat unfold 2 { ef8 f } r4 | % m. 34

    %% first time
    \tuplet 3/2 { cs,8 cs d }
    \tuplet 3/2 { ef8 f af }
    df4 | % m. 35
    a2-> r4 | % m. 36

    %% second time
    \tuplet 3/2 { cs8 cs d }
    \tuplet 3/2 { ef8 f af }
    df4 | % m. 37
    a2 r4 | % m. 38

    %% first time
    \tuplet 3/2 { bf,8 g f }
    \tuplet 3/2 { c8 f f }
    bf4 | % m. 39
    ef2-> r4 | % m. 40

    %% second time
    \tuplet 3/2 { bf'8 g f }
    \tuplet 3/2 { c8 f f }
    bf4 | % m. 41
    ef2 r4 | % m. 42

    %% first time
    \tuplet 3/2 { cs,8 e f }
    \tuplet 3/2 { a,8 d b }
    cs4 | % m. 43
    c2-> r4 | % m. 44

    %% second time
    \tuplet 3/2 { cs'8 e f }
    \tuplet 3/2 { a,8 d b }
    cs4 | % m. 45
    c2 c,4 | % m. 46

    cs2 r4 | % m. 47
    c2 r4 | % m. 48
    cs2 r4 | % m. 49

    R1 * 3/4 ^ \fermata

    \bar "||" | % m. 50


    %% Slow and steady %%
    \time 2/4
    cs,4. cs8 | % m. 51
    cs4. d8 | % m. 52
    f4. a8 | % m. 53
    f4. d8 | % m. 54

    cs4. cs8 | % m. 55
    d4 ds | % m. 56
    gs4. bf,8 | % m. 57
    f'4 b, | % m. 58

    \time 3/4
    d4. d8 ~ d4 | % m. 59
    ef2 f4 | % m. 60
    df4. g8 ~ g4 | % m. 61
    bf4 df,2 | % m. 62
    ef8 ef ~ ef2 | % m. 63
    f4 af2 | % m. 64
    a4. f8 ~ f4 | % m. 65
    ef2 ~ ef8. c16 | % m. 66
    f8. f16 ~ f2 | % m. 67
    af4 df,2 | % m. 68
    bf2 c4 | % m. 69
    df4.. df16 ~
    \override BreathingSign.text =
      \markup { \musicglyph "scripts.caesura.straight" }
    df4 \fermata \breathe | % m. 70

    %%%%

    %%% Freely %%%
    \time 13/4
    <af ef' c'>2. \arpeggio <af ef' df'>2 \arpeggio
    <bf f' ef'>2 \arpeggio <a f' cs'>2. \arpeggio
    <a f' d'>2. \arpeggio
    \bar "||" | % m. 71

    %%% Tempo change
    %%% "Presto"
    \time 3/8
    %% manual beam
    \once \override Beam.positions = #'(3 . 3)
    \addStacc { cs8 [ cs d | % m. 72
    ef8 f gs } | % m. 73
    cs8 _ \markup \small \italic { sim. } a bf | % m. 74
    g8 f c | % m. 75
    f8 f bf | % m. 76
    ef8 df e, | % m. 77
    f8 a d | % m. 78
    b8 cs c ]
    R1 * 3/8 ^ \fermata
    \bar "||" | % m. 79
    \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
    \mark \markup { \huge "*" }
  }

  %% Last measure
  \absolute {
    \time 4/4
    \override Beam.thickness = #0.35
    \override Beam.grow-direction = #RIGHT
    \scaleDurations #'(4 . 1)
    {
      \featherDurations 2/3
      {
        \once \override Beam.positions = #'(7 . 8.7)
        f'64
        _ \markup
          \tiny
          \center-align
          \box
          \pad-around #0.25 { "* - Start slowly and accelerate to the end at will." }
        [
        \change Staff = "RH"
        \ottava #1
        ef'''64
        \change Staff = "LH"
        d,64
        \change Staff = "RH"
        cs''''64 ]
      }
    }
    \change Staff = "LH"
    <fs, cs, as,, fs,,>4
    r2 \fermata
    \bar "|." | % m. 80
  }
}


% vim: ft=lilypond sw=2 et sts=2
