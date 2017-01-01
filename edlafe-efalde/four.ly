voicefour = {
  \new Voice \with {
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
  }
  {
    \relative c' {
      \voiceFour
      \stemUp
      %\voiceFourStyle

      s8*28 s8*28

      %%% P %%%
      aes2    % d4;p8
      e4.     % d3;p4
      dis8    % d1;p3
      b4.     % d3;pe
      c4      % d2;p0
      g'4     % d2;p7
      fis4    % d2;p6
      d4      % d2;p2
      bes4.   % d3;pt
      a8      % d1;p9
      cis4.   % d3;p1
      f2      % d4;p5
      r8

      %%% I %%%
      aes2    % d4;p8
      c,4.    % d3;p0
      cis8    % d1;p1
      f4.     % d3;p5
      e4      % d2;p4
      a,4     % d2;p9
      bes4    % d2;pt
      d4      % d2;p2
      fis4.   % d3;p6
      g8      % d1;p7
      ees4.   % d3;p3
      b2      % d4;pe
      r8

      %%% R %%%
      f2      % d4;p5
      cis4.   % d3;p1
      a8      % d1;p9
      bes4.   % d3;pt
      d4      % d2;p2
      fis4    % d2;p6
      g4      % d2;p7
      c,4     % d2;p0
      b4.     % d3;pe
      dis8    % d1;p3
      e4.     % d3;p4
      aes2    % d4;p8
      r8

      %%% RI %%%
      b2      % d4;pe
      dis4.   % d3;p3
      g8      % d1;p7
      fis4.   % d3;p6
      d4      % d2;p2
      bes4    % d2;pt
      a4      % d2;p9
      e4      % d2;p4
      f4.     % d3;p5
      des8    % d1;p1
      c4.     % d3;p0
      aes'2   % d4;p8
    }
  }
}


% vim: ft=lilypond sw=2 et sts=2
