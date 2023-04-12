%%% SPDX-FileCopyrightText: 2009 Patrick McCarty <pnorcks@gmail.com>
%%%
%%% SPDX-License-Identifier: CC0-1.0

\version "2.24.0"

\include "functions.ly"

dynamics = {
  s1 \fff | % m. 1
  s1 | % m. 2
  s1 | % m. 3
  s1 | % m. 4
  s1 | % m. 5
  s1 | % m. 6
  s2 \p
  s2 - \markup \italic \small \whiteout \pad-markup #0.2 { "mysteriously" } | % m. 7
  s1 | % m. 8
  s1 | % m. 9
  s1 | % m. 10
  s1 | % m. 11
  s1 | % m. 12
  s1 | % m. 13
  s1 | % m. 14
  s1 | % m. 15
  s8 s8 \mp s4 s2 | % m. 16
  s1 | % m. 17
  s1 | % m. 18
  s1 | % m. 19
  \once \override Hairpin.bound-padding = #3
  s1 \< | % m. 20
  s1 \mf | % m. 21
  \once \override Hairpin.bound-padding = #3
  s1 \> | % m. 22
  s1 | % m. 23
  s1 \mp | % m. 24
  s1 | % m. 25
  s1 | % m. 26
  s1 | % m. 27
  s1 | % m. 28
  s1 | % m. 29
  s2 s4 s4 - \markup \italic \small \whiteout \pad-markup #0.2 { "legatissimo" } | % m. 30
  s1 | % m. 31
  s1 * 5/4 | % m. 32
  s1 * 3/4 | % m. 33
  s1 * 3/4 | % m. 34
  s \mf | % m. 35
  s | % m. 36
  s \pp | % m. 37
  s | % m. 38
  s \mf | % m. 39
  s | % m. 40
  s \p | % m. 41
  s | % m. 42
  s \f | % m. 43
  s | % m. 44
  s \p | % m. 45
  s \> | % m. 46
  s \pp | % m. 47
  s | % m. 48
  s | % m. 49
  s | % m. 50
  \once \override Hairpin.bound-padding = #3
  s4 \p \< s4 | % m. 51
  s4 s4 | % m. 52
  s4 \mp \> s4 | % m. 53
  s4 s4 \! | % m. 54
  s4 \p s4 | % m. 55
  s1 * 2/4 | % m. 56
  \once \override Hairpin.bound-padding = #3.5
  s4 \< s4 | % m. 57
  s4 s4 | % m. 58
  s8 \mf s8 \p s4 s4 | % m. 59
  s16*2 s16 - \markup \italic \small \whiteout \pad-markup #0.2 { "agitato" } s16 s2 | % m. 60
  s4 \mp s4 s4 | % m. 61
  s1 * 3/4 | % m. 62
  s16*2 s16 \mf \< s16 s2 | % m. 63
  s4 s4 \p
  \crescTextCresc
  s4 \< | % m. 64
  s1 * 3/4 | % m. 65
  s | % m. 66
  s \f | % m. 67
  \crescHairpin
  s | % m. 68
  s4 \ff s4 s4 \> | % m. 69
  s4 s s \p | % m. 70
  s1 * 13/4 | % m. 71
  \override TextScript.outside-staff-priority = ##f
  \override TextScript.staff-padding = #0
  \override TextScript.padding = #0
  s8 s8 - \markup \whiteout \italic \small \pad-markup #0.2 { unaccented } s8 | % m. 72
  s1 * 3/8 | % m. 73
  s | % m. 74
  s | % m. 75
  s | % m. 76
  s | % m. 77
  s | % m. 78
  s | % m. 79
  s | % m. 80
  \override Hairpin.extra-offset = #'(2 . -2)
  \override Hairpin.rotation = #'(9 -1 0)
  \override Hairpin.bound-padding = #3
  \once \override Hairpin.style = #'dashed-line
  s4 \< s4 \fff s2 | % m. 81
}


% vim: ft=lilypond sw=2 et sts=2
