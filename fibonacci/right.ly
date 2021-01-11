\version "2.22.0"

\include "functions.ly"

upper = \absolute {
  \override VoiceFollower.style = #'dotted-line
  \tempo "" 1 = 32
  \showStaffSwitch
  R1 | % m. 1
  \ottava #1
  cs''''1-> ^ \sfz | % m. 2
  R1 | % m. 3
  \ottava #0
  ef'''1-> ^ \sfz | % m. 4
  R1 | % m. 5
  R1 ^ \fermata \bar "||" | % m. 6
  \tempo "Andante" 4 = 80
  \change Staff = "LH"
  \time 4/4
  \relative c {
    \stemUp
    \tieUp
    cs4 cs d4. ef8 | % m. 7
    f2. gs4 | % m. 8
    cs2 a4 bf | % m. 9
    g2 f4 c | % m. 10
    f4. f8 bf4 ef | % m. 11
    df2 ~ df8 e, ^ ( f a | % m. 12
    d2. ) b4 | % m. 13
    cs2 c ~ | % m. 14
    c4 af8. f16 ef4 d | % m. 15
    \change Staff = "RH"
    \clef "bass"
    \stemNeutral
    \tieNeutral
    r8 f8 e4 ~ e8 ef d4 ~ | % m. 16
    d8 f a d bf a bf4 ~ | % m. 17
    bf8 af g4 ~ g8 f16 ( g a8 ) g16 ( a | % m. 18
    bf8 ) c a g ~ g af4 g8 ~ | % m. 19
    g8 af c ef ~ ef df ~ df c ~ | % m. 20
    c8 bf c16 df ef8 ~ ef e c a ~ | % m. 21
    a8 e16 ( f g gs a as
    \clef "treble"
    b16 c cs d
    ds e f g | % m. 22
    gs16 a as b c cs d ds
    e16 f g gs a as b c | % m. 23
    \makeOctaves #-1 { cs2 ) r2 } | % m. 24
    R1 | % m. 25
    r2 \addStacc { f,,,8
    ^ \markup \italic { "rubato" }
    c' f, f } | % m. 26
    r8
    ^ \markup \italic { "a tempo" }
    \addStacc { d'8 ef d ef4 f } | % m. 27
    d4-. r4 \addStacc { df'8 c c bf } | % m. 28
    c4-. r4 r8 a8 ( g f | % m. 29
    e4-. ) r4 r bf'4-- ( | % m. 30
    af2 g2 ) | % m. 31
    \time 5/4
    af2 ( g2. ) | % m. 32

    \time 3/4
    R1 * 3/4 | % m. 33
    \override TextSpanner.bound-details.left.text = #"rit."
    ef8
    \startTextSpan
    f ef f ef f
    \stopTextSpan
    | % m. 34

    %% first time
    ef8 ^ \markup \italic { "a tempo" } f \repeat unfold 2 { ef8 f } | % m. 35
    ef8 f ef-> f ef f | % m. 36
    %% second time
    \repeat unfold 3 { ef8 f } | % m. 37
    ef8 f ef f ef f | % m. 38

    %% first time
    \repeat unfold 3 { df8 g } | % m. 39
    df8 g df-> g df g | % m. 40
    %% second time
    \repeat unfold 3 { df8 g } | % m. 41
    df8 g df g df g | % m. 42

    %% first time
    \repeat unfold 3 { b,8 a' } | % m. 43
    b,8 a' b,-> a' b, a' | % m. 44
    %% second time
    \repeat unfold 3 { b,8 a' } | % m. 45
    b,8 a' b, a' b, a' | % m. 46

    <a, bf'>2 r4 | % m. 47
    <b a'>2 r4 | % m. 48
    <a bf'>2 r4 | % m. 49

    R1 * 3/4 ^ \fermata
    \bar "||" | % m. 50

    %% section 3

    \time 2/4
    \tempo "Slow and steady" 4 = 60
    <e' gs,>4 \acciaccatura { cs16[ ds] } <e gs,>4 | % m. 51
    <ds gs,>4 \acciaccatura { e16[ ds] } <cs gs>4 | % m. 52
    <cs gs>4 \acciaccatura { ds16[ cs] } <c g>4  | % m. 53
    <cs gs>4 \acciaccatura { ds16[ e] } <es bs gs>4 | % m. 54

    <e gs,>4 \acciaccatura { cs16[ ds] } e16 f gs a | % m. 55
    <gs c,>8 \acciaccatura { as16[ gs] } <es b>8 ~ <es b>16 ds b as | % m. 56

    b16 d8 bf32 f' g16 af bf c | % m. 57
    <df df,>16 ( c af ) <e' e,> ( ds b ) <g' g,> ( ds | % m. 58

    \time 3/4
    \override Beam.breakable = ##t
    <gs gs,>16 ) \noBeam d,16 f gs
    a16 e f b
    c16 d, ( f gs | % m. 59

    a16 b ) e, ( f
    gs16 b c ) f, (
    gs16 as b c ) | % m. 60

    af16 ( bf c d
    e16 ) f ( ef df
    cf16 bf a af | % m. 61

    g16 ) e' ( ef c
    b16 a ) c ( a
    f16 d df c | % m. 62

    bf16 a ) af' ( ff
    ef16 df c ) ff (
    cf16 bf a af | % m. 63

    g16 f e ) f (
    g16 g af bf )
    af16 ( bf bf c | % m. 64

    c16 df df ef )
    ef16 ( f f g
    af16 ) g _ ( af <af af'> | % m. 65

    bf16 <bf bf'> c c
    df16 ) c ( bf c
    df16 ef ) f g | % m. 66

    af16-> g <f f'>8 f16-> ef <df df'>8
    bf16 af g f | % m. 67

    g16 ef f8
    g16 af \tuplet 3/2 { bf16 ( c df }
    \tuplet 3/2 { ef16 f g }
    \tuplet 3/2 { af16 bf c ) } | % m. 68

    df16-> c <bf bf'>8 bf16-> af <gf gf'>8
    ef16 ( df c bf | % m. 69

    af16 ) f g af
    g4
    \override BreathingSign.text =
      \markup { \musicglyph "scripts.caesura.straight" }
    f4 \fermata \breathe | % m. 70

    %%%%
    \tempo "Freely (ad-lib)"
    \time 13/4
    <af'' af,>2. \arpeggio <af af,>2 \arpeggio
    <df df,>2 \arpeggio <a a,>2. \arpeggio
    <g g,>2. \arpeggio
    \bar "||" | % m. 71

    %%% Tempo change
    \tempo "Presto" 4. = 142
    \time 3/8
    %% manual beam
    \once \override Beam.positions = #'(-3 . -3)
    \addStacc { cs,,8 [ cs d | % m. 72
    ef8 f gs } | % m. 73
    cs8 ^ \markup \small \italic { sim. } a bf | % m. 74
    g8 f c | % m. 75
    f8 f bf | % m. 76
    ef8 df e, | % m. 77
    f8 a d | % m. 78
    b8 cs c ] | % m. 79
    R1 * 3/8 ^ \fermata
    \bar "||" | % m. 80
  }

  \absolute {
    \time 4/4
    s4
    <fs''' as''' cs'''' fs''''>4
    \ottava #0
    r2 \fermata
    \bar "|."
  }
}


% vim: ft=lilypond sw=2 et sts=2
