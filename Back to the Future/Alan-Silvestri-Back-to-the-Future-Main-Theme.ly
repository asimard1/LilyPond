\version "2.25.22"
\language "english"

\header {
  title = "Back to the Future (Main Theme)"
  composer = "Alan Silvestri"
  % Remove default LilyPond tagline
  tagline = ##f
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

global = {
  \key c \major
  \time 4/4
  \tempo 4=76
}

right = \relative c'' {
  \global
  % Music follows here.
  \relative c'''' {
    <g g,>1 g16^"sparkle sound" d b f' df af r8 r2\fermata
    e'16 b af d bf f r8 r2\fermata df'16 af f b g d r8 r2\fermata
  }

  \key cf \major
  \relative c' {
    r4 df af'4. df8 cf4.. bf32 af \tuplet 3/2 {bf4 af gf}
  }

  <<
    \relative c'' {af1} \\
    \relative c' {df4.. \stemUp \change Staff = "left" <df df,>32 q q2^\fermata}
  >>

  \relative c' {
    \stemNeutral r4 df af'4. df8 <cf af ff>4.. bf32 af
    \tuplet 3/2 {<bf gf df>4 af gf} <af ef df>1
  }

  \tempo 4=155 \key af \major
  \relative c'' {
    <af f df>2 <df, af f> <g ef bf>2.. af16 bf
    \tuplet 3/2 {<af f df>4 f df} <g ef bf>4. af16 bf
    <af ef c>4 ef q ef' <ef bf f>2 <d bf f>4. c16 d <ef bf af>1
    ef,8 af ef af df bf ef af
    \key df \major
    <gf, bf df>2 <gf df bf> <c af ef>2.. df16 ef
    \tuplet 3/2 {<df bf gf>4 bf gf} <c af ef>4. df16 ef
    <df af f>4 af q <af' f df> q2 <g ef bf>4. f16 g <af ef df>2
    \change Staff = "left" \stemUp af,,,8 ef' af ef' \change Staff = "right"
    \stemNeutral af ef' af ef' af r r4

    <gf, df bf>4. f16 ef \tuplet 3/2 {<f df af>4 ef df}
  }

  <<
    \relative c'' {<ef df af>2. <af af,>4} \\
    \relative c' {r4. <ef df>16 q <ef c>2}
  >>

  \relative c''' {<gf ef cf>4. f16 ef \tuplet 3/2 {<f df af>4 ef df}}
  <<
    \relative c'' {<ef bf af>2~ \tuplet 3/2 {q4 bf, c}} \\
    \relative c' {r4. <ef bf>16 q q2}
  >>
  \relative c' {
    <df af gf>4. c16 bf \tuplet 3/2 {<c af ef>4 af ef'}
    <ef cf af>4. df16 cf \tuplet 3/2 {<df bf gf>4 gf, gf'}
  }

  \key e \major \time 6/4
  \relative c' {<fs ds b>4. e16 ds <ds b fs>1 <e cs a>4. d16 cs <cs a e>1}

  \key c \major \time 4/4
  \relative c'' {
    <d b g>4. c16 b <b g d>2
    \tuplet 3/2 {<d g, d>4 <c g d> <b g d>} \tuplet 3/2 {<b g d> <c g d> <d g, d>}
  }

  \key a \major
  \relative c' {
    d16 b cs d e cs d e fs d e fs gs e fs gs
    a fs gs a b gs a b cs a b cs d b cs d
    <e cs a>2 <a, e cs> <ds b fs>2.. e16 fs
    \tuplet 3/2 {<g e c>4 e c} <fs d a>4. g16 a
    \time 2/4
    <bf g ef>4. ef,16 g
    \time 4/4 <a e a,>1
  }

  \key c \major
  R1*2
  \relative c'' {
    <f, a c>2 <f c a> <b g d>1 r2 \tuplet 3/2 {\stemDown r4 <c c,> <d d,>}
    \stemNeutral \tuplet 3/2 {<c a f>4 a f} <b g d>2~2
    \tuplet 3/2 {\stemDown r4 <c c,> <d d,>} \stemNeutral
  }

  \key af \major
  \relative c'' {
    <ef c af>2 <af, ef c> <d bf f>2.. ef16 f
  }
  \key a \major
  \relative c'' {
    <fs ds b>2 b, <f' cs gs>2.. fs16 gs
    <a fs d>4. <fs fs,>16 d <a fs d>2~1.
  }
  \key ef \major
  <<
    \relative c''' {<d d,>2} \\
    \relative c' {r4. f16 bf}
  >>
  \relative c'' {
    <d bf f>4. f,16 bf d8 bf16 d <f d bf>2.~2
  }

  \relative c' {
    r4 \clef bass <bf f d>8 r r <af ef c> r r
    <bf f d>8 r r <af ef c> r r <bf f d>8 r
    r <af ef c> r r <bf f d>8 r r <af ef c>
    r r <df bf gf>8 r r <c af ef>8 r r
  }

  \key e \major
  \relative c {
    <e cs a>2 a, ds~ \tuplet 3/2 {4 e fs}
    \tuplet 3/2 {<e cs a>4 <cs a> a} ds4. e16 fs
    <e cs a>4 a, q <b' e, cs>
  }
  \key g \major \time 21/8 \clef treble
  \relative c'' {
    <g e c>4. <c, g e> <d a fs> <e c g> <fs d a> <g e c> <a fs d>
  }

  \key bf \major \time 4/4
  \relative c'' {
    <bf g ef>2 <ef, bf g> <a f c>2.. bf16 c \tuplet 3/2 {bf4 g ef} <a f c>4. bf16 c
    <bf f d>4 <f d> <bf f d> <f' d bf> <f c g>2 <e c g>4. d16 e <f c a>1
    f,8 bf f bf ef c f bf
  }
  \key ef \major
  \relative c'' {
    <ef c af>2 <af, ef c> <d bf f>2.. ef16 f \tuplet 3/2 {ef4 c af} <d bf f>4. ef16 f
    <ef bf g>4 <bf g ef> <ef bf g> <bf' g ef> <bf f c>2 <a f c>4. g16 a <bf f ef>1
  }
  \relative c {
    f8 af f af ef' c af c af' f bf ef bf ef af f bf ef bf ef af f bf, ef
    <af, ef af,>4. g16 f \tuplet 3/2 {<g ef bf>4 f ef}
  }
  <<
    \relative c'' {<f ef bf>2. <bf bf,>4} \\
    \relative c' {r4. <ef bf f>16 q <d bf f>2}
  >>
  \relative c''' {
    <af ef af,>4. g16 f \tuplet 3/2 {<g ef bf>4 f ef}
    <f~ c~ bf>2 \tuplet 3/2 {<f c a>4 c d}
    <ef c af>4. d16 c \tuplet 3/2 {<d bf f>4 <bf f> f'}
    <f df bf>4. ef16 df \tuplet 3/2 {<ef af, ef>4 af, af'}
  }

  \key e \major
  \relative c''' {
    <gs ds b>4. fs16 es <es ds b>2
    \tuplet 3/2 {gs,4 fs es} \tuplet 3/2 {es ds cs}
    <gs'' cs, a>4. fs16 es <es cs a>2
    \tuplet 3/2 {<gs gs,>4 <fs fs,> <es es,>} \tuplet 3/2 {<es es,> <ds ds,> <cs cs,>}
    gs,4. cs8 gs'4. fs16 es \tuplet 3/2 {<fs cs>4 {es ds}}
    \tuplet 3/2 {<fs ds cs> es ds}
  }

  \relative c''' {
    \tuplet 3/2 {<gs gs,>8 q q~} \tuplet 3/2 {q8 q <fs fs,>} <gs gs,>2
  }
  \clef bass
  \relative c {
    a1-> e'2 a, \tuplet 3/2 {ds2 e fs}
  }
  \clef treble
  \relative c''' {
    \tuplet 3/2 {<gs gs,>8 q q~} \tuplet 3/2 {q8 q <fs fs,>} <gs gs,>2
  }
  \clef bass
  \relative c {
    a1-> a'2 d, \tuplet 3/2 {gs2 a b}
  }
  \clef treble
  \relative c''' {
    \tuplet 3/2 {<gs gs,>8 q q~} \tuplet 3/2 {q8 q <fs fs,>}
    \tuplet 3/2 {<gs gs,>8 q q~} <gs gs,>4
  }
  \clef bass
  \relative c {
    cs1->
  }
  \clef treble
  \relative c''' {
    <gs gs,>2 <cs, cs,> \tuplet 3/2 {<fss fss,> <gs gs,> <as as,>}
    <gs gs,>2 <cs, cs,> <gs' gs,> <cs cs,>
    \tuplet 3/2 {<gs, cs,>8 q q~} \tuplet 3/2 {q q <fs cs>} <gs cs,>2
    \tuplet 3/2 {<cs cs,>8 q q~} \tuplet 3/2 {q q <b b,>} <cs cs,>4 r \fine
  }
}

left = \relative c' {
  \global
  % Music follows here.

  \relative c'' {g1 R1\fermata R1\fermata R1\fermata}

  \key cf \major
  \relative c, {
    <df df,>1 ~4 <af' af,> <bf bf,> <cf cf,>
    <df df,>2 \repeat tremolo 8 { df,,32 df' }
    <df df,>1 <ff ff,>2 <gf gf,> \repeat tremolo 16 { af,32 af' }
  }

  \key af \major
  \relative c {
    <af df,>1~2 <g' df>16 q <bf g df>8 r4
    <af, df,>2. q4 r8 <af c,>4.~2 r4 <bf bf,>2 q4 <ef ef,>4 <ef, ef,>8 8 8 8 8 8
    4 r4 r2
    \key df \major
    r4 <gf gf,>~8 8~8 8 r4 <af af,> q2 <gf gf,>2. <af af,>4
    r8 <df df,>4. r8 <bf bf,>4. r4 <ef ef,>2 <ef, ef,>4
    \stemDown <af af,>8 8 r8 8 8 8 r8 8 \stemNeutral 8 8 r8 8 <af' af,>8 r8 <af, af,>4
    ef'2 f af <af, af,>4 <bf bf,> <cf cf,>2 <df df,> <ef ef,> <f f,>
    <gf, gf,> <f f,> <ff ff,> <ef ef,>
  }

  \key e \major \time 6/4
  \relative c {
    r4 <b b,>2 8 8 \tuplet 3/2 {4 4 4}
    r4 <a a,>2 8 8 \tuplet 3/2 {4 4 4}

    \time 4/4 \key c \major
    r4 <f f,>2. \tuplet 3/2 {4 4 4} \tuplet 3/2 {4 4 4}
  }

  \key a \major
  \relative c,, {
    r4 e8 8 8 8 8 8 <e'' e,>8 8 8 8 8 8 8 8
    <a, a,>1 r8 8 r4 2
    <c c,>4 <b b,> <a a,> <d d,>

    \time 2/4
    <ef ef,>4 <ef, ef,>
    \time 4/4
    <cs' cs,>1

    \key c \major
    <f c a>8 8 r8 8 8 8 r8 8 8 8 r8 8 8 8 r8 8 8 8 r8 8 8 8 r8 8
    <g d b>8 8 r8 8 8 8 r8 8 8 8 r8 8 8 8 r8 8 <f c a>8 8 r8 8 <g d b>8 8 r8 8
    8 8 r8 8 8 8 r8 8

    \key af \major
    <af, af,>8 8 r8 8 8 8 r8 8 <bf bf,>8 8 r8 8 8 8 r8 8

    \key a \major
    <b b,>8 8 r8 8 8 8 r8 8 <cs cs,>8 8 r8 8 8 8 r8 8
    r4. <d d,>8 2
    \time 12/8
    <e, e,>4. <fs fs,> <gs gs,> <a a,>~
    \key ef \major
    \time 2/4
    q2
    \time 3/4
    r4 <bf bf,>2 2.~ 2
    <bf bf,>8 8
    \time 6/8
    \repeat unfold 10 {\repeat unfold 3 {<bf bf,>8}}

    \key e \major
    \time 4/4
    \repeat unfold 4 {\repeat unfold 8 {a,8}}

    \key g \major
    \repeat unfold 7 {\repeat unfold 3 {<c' c,>8}}

    \key bf \major
    <ef ef,>8 8 r8 8 r8 8 r8 8 <f f,>8 8 r8 8 r8 8 r8 8
    <ef ef,>8 8 r8 8 <f f,>8 8 r8 8 r8 <bf, bf,>4. r8 <g g,>4.~4
    <c c,>4 ~8 8~8 8 <f, f,>4 8 8 8 8 8 8 4 r r2

    \key ef \major
    <af af,>8 8 r8 8 r8 8 r8 8 <bf bf,>8 8 r8 8 r8 8 r8 8
    <af af,>8 8 r8 8 <bf bf,>8 8 r8 8 r8 <ef ef,>4. r8 <c c,>4.
    ~4 <f, f,>4 ~8 8~8 8 <bf bf,>4 8 8 8 8 8 8 1 1 1
    <f f,>2 <g g,> <bf bf,> <bf, bf,>4 <c c,> <df df,>2 <ef ef,>
    <f f,>16 16 8~8 16 16 2
    <af af,>2 <g g,> <gf gf,> <f f,>

    \key e \major
    b4 b b b <gs' es cs b>2 <gs es cs as>2
    a,!4 a a a <gs gs,>2 <g g,> <fs fs,> <f f,> <ds ds,> <gs gs,>

    R1 <a, a,>1->~1~1 R1 <d d,>1->~1~1 R1 <cs cs,>->~1~1 2 2 <cs' cs,> <gs' cs,>
    \tuplet 3/2 {<gs gs,>8 8 8~} \tuplet 3/2 {8 4} 2
    \tuplet 3/2 {<cs,, cs,>8 8 8~} \tuplet 3/2 {8 4} 2
  }
}

\score {
  \new PianoStaff <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi { }
}
