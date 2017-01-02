\version "2.18.2"

#(ly:set-option 'point-and-click #f)
#(set-default-paper-size "letter")

\header {
  title = "Memory, hither come"
  composer = "Patrick McCarty"
  opus = \markup \smaller { "March 2007" }
  poet = "William Blake (poet)"
  copyright = \markup \fontsize #-3 {
    "This score is dedicated to the public domain. See https://creativecommons.org/publicdomain/zero/1.0/"
  }
}

\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  system-system-spacing #'basic-distance = #5
  %annotate-spacing = ##t
}

\score {
  <<
    \new Staff {
      \new Voice = "mel" {
        \key f \minor
        \clef treble
        \time 4/4
        \relative c'' {
          \tempo "Andante"
          % A
          R1 |
          c8^\mp bes aes2. |
          des8 c bes2~ bes8 bes |
          des8.( c16 b!4~ b8) c f16( ees) des8 |
          c2( bes?) |
          r4 aes8( bes8) c4. bes8 |
          bes4. c8 des4. c8 |
          c8[( f] g8. f16 e!4.) f8 |
          f1 |

          % Transition
          r2 r4 r8 f8^\mf \bar "||" \key des \major

          % B
          f8 des aes bes c4. ees8 |
          des8 aes8 ges f ees4. ees8 |
          ees8 f f ges f[ aes] beses8. aes16 |
          aes8 fes ees fes ees2 |
          r2 r4 ees4 |
          f?4. ees16 f ges8[( aes]) bes8. aes16 |
          \tuplet 3/2 { aes16[( bes aes) } ges8] \tuplet 3/2 { ges16( aes ges) } f8 ees4. f8 |
          \tuplet 3/2 { ges8( aes) beses } ees8 des c4. ees8 |
          f8 ees des2. |

          % Retransition
          R1 |
          R1*3 \bar "||" \key f \minor

          % A'
          c8^\f bes aes2. |
          des8 c bes2~ bes8 bes |
          des8.( c16 b!4~ b8) c f16( ees) des8 |
          c2( bes?) |
          r8 aes8 aes8 bes8 c4. bes8 |
          bes4. c8 des4. c8 |
          c8[(^\ff f]) g8 f8 e!4. e8 |
          e!2 f2 |
          R1*3 \bar "|."
        }
      }
    }
    \new Lyrics \lyricsto mel \lyricmode {
      % A
      Me -- mo -- ry, __
      hi -- ther come, __ and
      tune __ your mer -- ry
      notes; __
      And, __ while u --
      pon the wind Your
      mu -- sic floats.

      % Transition (tacit)

      % B
      I'll pore u -- pon the stream Where
      sigh -- ing lov -- ers dream, And
      fish for fan -- cies as they pass With --
      in the wat -- ery glass.
      I'll
      drink of the clear __ stream, And
      hear __ the lin -- net's song; And
      there __ I'll lie and dream The
      day a -- long:

      % Retransition (tacit)

      % A'
      And, when night __
      comes, I'll go __ to
      pla -- ces fit __ for
      woe, __
      Walk -- ing a -- long the
      dark -- en'd val -- ley
      With __ si -- lent Mel -- an --
      cho -- ly.
    }
    \new PianoStaff {
      <<
        % piano RH
        \new Staff {
          \new Voice {
            \key f \minor
            \clef treble
            \time 4/4
            \relative c' {
              % A
              r8 <aes c f>8 <aes c f>4 r8 <aes c f>8 <aes c f>4 |
              r8 <aes c f>8 <aes c f>4 r8 <aes c f>8 <aes c f>4 |
              r8 <bes des f>8 <bes des f>4 r8 <bes des f>8 <bes des f>4 |
              r8 <bes des ges>8 <aes d! f>4 r8 <aes c f>8 <g b! f'>4 |
              r8 <g c e!>8 <g c e>4 r8 <g c e>8 <g c e>4 |
              r8 <aes c f>8 <aes c f>4 r8 <aes c ees>8 <aes c ees>4 |
              r8 <f bes des>8 <bes des f>4 r8 <bes des f>8 <bes des f>4 |
              r8 <aes c f>8 <g c f>4 r8 <g c e!>8 <g bes e>4 |
              r8 <f aes f'>8 <f aes f'>4
              << { r8 f'8 f4~ } \\ { r8 <f, aes>8 <f aes>4 } >> |

              % Transition
              << { f'8 f4 f4 f4 f8 } \\ { s1 } >> \bar "||" \key des \major

              % B
              <<
                {
                  f2 ges |
                  f2 f |
                  f4 ges f ges |
                  fes2 ees |
                  ees2 ees |
                  f2 ges |
                  f4 ges ges2 |
                  ees2 ees4 ges |
                  f2 f |
                }
                \\
                {
                  aes,8_\mf des4 aes16 des aes8 c4 aes16 c |
                  aes8 des4 aes16 des c8 ees4 c16 ees |
                  bes8 des bes ees bes des beses des |
                  aes8 des4 aes16 des aes8 c4 aes16 c |
                  aes8 c4 aes16 c aes8 c4 aes16 c |
                  aes8 des4 aes16 des aes8 c4 aes16 c |
                  aes8 des bes d! bes ees4 bes16 ees |
                  beses8 des4 beses16 des aes8 c4 aes16 c |
                  aes8 des4 aes16 des aes8 des4 aes16 des |
                }
              >>

              % Retransition
              <<
                {
                  f2 f |
                  ges2 ges4 f |
                  f2 f |
                  f2 e!4
                }
                \\
                {
                  aes,8 des4 aes16 des aes8 des4 aes16 des |
                  bes8 des4 bes16 des aes8 des4 aes16 des |
                  aes8 ces4 aes16 ces aes8 b!4 aes16 b |
                  aes8 c?4 aes16 c g!8 c
                }
              >>
              <g c e>8 <g c e>8 \bar "||" \key f \minor

              % A'
              <aes c f>4_\f <aes c f>8 <aes c f>8 <aes c f>4 <aes c f>8 <aes c f>8 |
              <bes des f>4 <bes des f>8 <bes des f>8 <bes des f>4 <bes des f>8 <bes des f>8 |
              <bes des ges>4 <aes d! f>8 <aes d f>8 <aes c f>4 <g b! f'>8 <g b f'>8 |
              <g c e!>4 <g c e>8 <g c e>8 <g c e>4 <g c e>8 <g c e>8 |
              <aes c f>4 <aes c f>8 <aes c f>8 <aes c ees>4 <aes c ees>8 <aes c ees>8 |
              <f bes des>4 <bes des f>8 <bes des f>8 <bes des f>4 <bes des f>8 <bes des f>8 |
              <aes c f>2 <g bes e!>2 |
              r2 <f aes f'>2 |
              s1 | s1 | s1 \bar "|."
            }
          }
        }
        % piano LH
        \new Staff {
          \new Voice {
            \key f \minor
            \clef bass
            \time 4/4
            \relative c, {
              % A
              f2^\mp_\markup { \italic { "with pedal" } } f |
              f2 f |
              bes2 bes |
              bes4 b! c des |
              c2 c, |
              f2 aes |
              bes2 g |
              c2 c, |
              f2 f |

              % Transition
              R1 \bar "||" \key des \major

              % B
              des4 des ees ees |
              f4 f a! a |
              bes4 bes bes ges |
              aes4 aes aes, aes |
              ges'4 ges ges, ges' |
              f4 f ees ees |
              des4 ges ges ges |
              ges4 ges aes aes |
              des,4 des des des |

              % Retransition
              des4 des des des |
              des4 des des des |
              des4 des des des |
              c4 c <c c'> <c c'> \bar "||" \key f \minor

              % A'
              <f, f'>2 <f f'>2 |
              <bes bes'>2 <bes bes'>2 |
              <bes bes'>4 <b! b'>4 <c c'>4 <des des'>4 |
              <c c'>2 <c, c'>2 |
              <f f'>2 <aes aes'>2 |
              <bes bes'>2 <g g'>2 |
              <c c'>2 <c, c'>2 |
              r2 <f aes c f>2 |
              <<
                % highest voice
                {
                  c''8^\p f g f e!4. e8 |
                  e!2 f~ |
                  f1^\pp
                }
                \\
                % lowest voice (appears in last measure)
                {
                  s1*2 | %\shiftOff
                  f,,1 \bar "|."
                }
                \\
                % second highest voice
                {
                  c''2 c |
                  \tieDown
                  <c~ aes~>1 |
                  <c aes>1 \bar "|."
                }
                % second lowest voice
                {
                  <aes c,>2 <g c,> |
                  f1~ |
                  f1 \bar "|."
                }
              >>
            }
          }
        }
      >>
    }
  >>
  \layout {
    \context {
      \Score
      \override LyricText.font-size = #-1
    }
    \context {
      \Lyrics
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
      \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #4
    }
  }
}


% vim: ft=lilypond sw=2 et sts=2 nu
