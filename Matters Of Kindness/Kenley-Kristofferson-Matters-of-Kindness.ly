\version "2.25.20"
\language "english"

RH = \rightHandFinger \etc

\header {
  title = "Matters of Kindness"
  subsubtitle = "To commemorate the life of Madison Fleming"
  composer = "Kenley Kristofferson"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

global = {
  \key af \major
  \time 4/4
  \tempo "With warmth" 4=72
}

right = \relative c' {
  \global
  % Music follows here.
  \mergeDifferentlyHeadedOn
  <<
    \relative c'' {
      % TOP VOICE
      s1 s4 <g g'> <ef' ef'>2
      s1 s4 <g, g'> <ef' ef'>2

    } \\
    \relative c' {
      % BOTTOM VOICE
      af1
      \once \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
      c2.\arpeggio d4\rest
      af1
      \once \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
      c2.\arpeggio d4\rest
      s1 s1 f1~2
    } \\
    \relative c' {
      % MIDDLE VOICE
      af8_(\p\< bf c4_~4 ef ef2.)\> s4
      af,8_(\< bf c4 f g ef2.\>) s4
      \stemDown <f af>2._(\< <g_~ bf^~>4 <g bf>2\> af)
      f2_(\< g~2^\markup{\italic "slight rit."}
      <f af>2 \tempo "With motion" 4=82 g\mp\> <af_~ c^~> <af c>1)
      \once \override MultiMeasureRest.staff-position = #0 R1\!
    } \\
    \relative c'' {
      s1 s1 s1 s1 s1 s1 s1 s2. \stemUp bf4^~2
    } \\
    \relative c'' {
      s1 s1 s1 s1 s4 af( ef'2) s4 af,( ef'2) s4 af,4( f'2) s4 f( ef \stemDown d,8\rest  af'8_~2)
    }
  >>
  <<
    \relative c'' {
      \stemNeutral b8\rest g,( ef'\< af, f' bf, ef g)
      \stemUp af-3 (\mp bf c4~8) af( bf c ef-4 f-5 ef4~8\noBeam) \stemUp bf-2( c ef
      f4.) f8( g af <bf f> g) f4( ef2) c8(-2 ef
      af4. af8 bf4 af c f, af) ef8( df c4 c8 df ef4 g, af1)
    } \\
    \relative c' {
      s1 c2-1(~8 ef8-1 c
      \once \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
      bf\arpeggio g'2~ g8 g ef
      \once \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
      d\arpeggio f1 bf4.) bf8-2( <c ef,>2-3-1) <f af,>8( c g-1 af-1 bf4-2 c-1)  df4(-2 c <df bf>2)
      df,4( af'2) ef4(~ 4. bf'8 af4 ef \stemNeutral af,4)
    } \\
    \relative c'' {s1 s1 s1 s1 s1 s1 s1 s1 s2 c}
  >>
  <<
    \relative c' {
      \stemNeutral
      ef4(\mp\< f g)
      <af c,>8(\mf <bf df,> <c^~ ef,_~>4 <c ef,>8) <af c,>( <bf df,> <c ef,>
      <ef g,> <f af,> <ef^~ g,_~>4 <ef g,>8) <bf g>( <c af> <ef bf>
      \stemUp <f af,>4 <af c,> <g bf,> <f af,> <ef g,> <c ef, c>2)
    } \\
    \relative c' {
      s2. s1 s1 df'4 c8 bf af2 ef2_(
      \once \tweak Parentheses.font-size 0 \parenthesize <bf' g>4)
    }
  >>
  \relative c'' {
    <c ef,>8( <ef g,> <af c,>4. <af c,>8 <bf df,>4\< <af c,>
    \time 2/4 <c ef,> <f, df af> \time 4/4 <af c,>2.\f\>) <ef g,>8( <df f,>
    <c ef,>4\mp <c ef,>8 <df f,> <ef g,>4 <g, df> <af c,>1~2.) r4\breathe \bar "||"
  }
  <<
    \relative c' {
      f4(\mp f8 g af4 f f ef2.) df4( df8 ef f4 df s4\< ef c' bf)
      <f f'>4(\mf <f f'>8\cresc <g g'>\! <af af'>4 <f f'> <g g'> <af af'> <bf bf'>) <ef ef'>8( df'
      <df, df'>4 <c c'> <bf bf'> <af af'> <bf bf'>2.) <af af'>4--
    } \\
    \relative c' {
      <af df>2( df <af df>4 bf c2) <f, bf>( <af df> f4 ef c'2)
      af'2( c bf ef2_) af2( f ef1)
    } \\ \\
    \relative c' {s1 s1 s1 c1^-}
  >>
  <<
    \relative c''' {
      af1-> ~2. af,4--^"L.H." 1->~2. \stemDown af,4_-_"L.H."

      \stemUp
      s4 af'(^"L.H." ef'2) s4 af,(^"L.H." ef'2)
    } \\
    \relative c'' {
      \stemNeutral
      af8(\f\dim af, bf\! af) \repeat unfold 2 {ef'( af, bf af)}
      \stemDown ef'( af g f)
      ef(^\markup{\italic "rit."} af, bf af)
      \repeat unfold 2 {ef'( af, bf af)} \stemUp bf^( c df f)
      \stemDown
      \repeat unfold 4 {ef8_( af, bf af)}
    }
  >>
  \relative c' { <c af ef c>1\fermata\p\caesura \bar "||"}

  \key df \major
  \relative c' {

  }
  \relative c' {
    <df f df'>8(\mp^\markup{\italic "a tempo"} <ef gf ef'> <f af f'>4 ~8)
    <df f df'>8( <ef gf ef'> <f af f'>
    <af c af'> <bf df bf'> <af_~ c_~ af'^~>4 <af c af'>8) <ef gf ef'>8( <f af f'> <af c af'>
    <bf df bf'>4. q8 <c ef c'> <df f df'> <ef gf ef'> <c ef c'> <bf df bf'>4 <af f' af>2)
  }
  <<
    \relative c' {
      \stemNeutral <f af f'>8( <af c af'>
      <df f df'>4. q8 <ef gf ef'>4 <df f df'> <f af f'> <bf, df bf'> <df f df'>
      \stemUp af'8 gf f2.\arpeggio) af8(\arpeggio gf f2.\arpeggio)
    } \\
    \relative c'' {
      s4 s1 s2.
      <c af>8( <bf gf> <af gf df>4\arpeggio\cresc df2)^>\! <f df gf,>4\arpeggio(  <bf, gf ef>4\arpeggio df2)^>
    }
  >>

  \relative c''' {
    <af df, af f>8(\arpeggio <gf bf, gf>
    <f, af f'>4 q8 <gf bf gf'> <af df af'>4 <c, ef c'>)
    <df f df'>4 <ef gf ef'> <f af f'>
    \tuplet 7/4 {ef16_(-2\< f-1 g af bf-4 c-1 d-4)}
    \key ef \major \bar "||"
    <ef, g ef'>8(\f <f af f'> <g_~ bf_~ g'^~>4 <g bf g'>8)
    <ef g ef'>( <f af f'> <g bf g'> <bf d bf'> <c ef c'> <bf d bf'>4~8)
    <f af f'>8( <g bf g'> <bf d bf'>
    <c ef c'>4.) <c af' c>8( <d af' d> <ef af ef'> <f af f'> <d af' d>)
    <c ef af_~ c>4( <bf f' af bf>2) <g bf g'>8( <bf d bf'>
    <ef g ef'>4.\< <ef g ef'>8 <f af d f>4 <ef g bf ef> <g bf ef g> <c, ef af c>
    <ef f c' ef>2->\ff^\markup{\italic "rall."}~2.\fermata)
    <bf bf'>8(-> <af af'>-> <af c d g>4)-> <bf ef bf'>-> <bf d bf'>-> <d bf f d>->
    ef1---3~\fermata\p\> <ef bf g g'>1\mf\fermata\arpeggio \fine
  }
}

left = \relative c {
  \global
  % Music follows here.
  <<
    \relative c {
      ef2 f g2. s4
      ef2 f g2. s4
    } \\
    \relative c {
      af1_\markup{\italic "Pedal generously throughout"}
      \once \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
      c2.\arpeggio d4\rest
      af1
      \once \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
      c2.\arpeggio d4\rest
    }
  >>
  f8( c' f g af2) df,,8( af' df ef f2) f,8( c' f g af2) <ef, g>8( bf' ef f g2)
  af,,8( ef' af bf c bf af ef) af,( ef' af bf c4 ef,) af,8( ef' af bf c bf af ef)
  bf4 c8( df)
  <<
    \relative c,{s4 ef4} \\
    \relative c {ef2^>}
  >>
  <af bf'>8( ef' af bf c-2 bf af
  \once \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
  ef\arpeggio)
  c( g' c d ef-2 d c
  \once \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
  <g bf>-4-3\arpeggio)
  <df af'>4( df'4) <ef, c'>4( <bf' f'>4--)
  <af,>8( ef' af ef) g,( ef' g <ef bf'>)
  \relative c {
    f,8( c' f c) <ef, g'>4\arpeggio <df f'>\arpeggio
    df8( af' <df f> af bf2)
    df4( ef'4) ef,4( <bf' df>4)
    <af, bf'>8( ef' af bf c bf af ef)
    af,( ef' af bf <c af>4 ef,)
  }
  <<
    \relative c' {af8( bf c df ef4) af,8( bf c df ef f g4 ef)} \\
    \relative c {
      af8( ef' af bf c4) f,8( ef c g' c d ef4 c)
    }
  >>
  \relative c {
    df8( af' df4) <ef, af df>8( bf' ef4) af,,8( ef' af ef) <g, g'>( ef' g ef)
    f,( c' f c) <ef, bf' ef>4 <df af' df>~
    \time 2/4 <df af' df> <ef'> \time 4/4 <bf df'>8 f' bf f af4 f df8 af' df4 ef,8 bf' ef4
    af,,8( ef' af bf c bf af ef) af,( ef' af bf c4) r\breathe \bar "||"
  }
  <<
    \relative c {
      f4( f8 g af4 f f ef2.) df2( f4 df c2 bf)
      f8( af-3 c-1 af f' af, c af) ef( bf' ef bf g' bf, ef bf')
      r c( bf af-3 g-1 f ef df) ef( bf ef g bf4) af_-
      s4 af,_( ef'2) s4 af,_( ef'2)
      s4 af,_( ef'2) s4 af,_( ef'2)
      af1-> ~2. af4_-
    } \\
    \relative c {
      df1( af1 bf1 af2 g) f1( ef df2 f ef1)
      <df'^~ df,_~>1 <df df,>
      <f^~ f,_~>1 <f f,>
      \once \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
      <bf,> <bf bf,>
    }
  >>
  \relative c {<af af,>\fermata\caesura \bar "||"}

  \key df \major
  \relative c {
    df4.( af8 df4) af'-- f4.( c8) f(-1 ef df c-1 bf af gf bf) af4-4 c-3 af'8(-1 gf f ef df4.-5) c8-2(
    bf4 df af) ef8( f-1 gf-4 af bf c df2-2)
    \relative c {gf8(-5 af bf c df2)}
    <<
      {ef,8( f gf af bf2)} \\
      \relative c' {s2. }
    >>
    <gf df' gf>2( <af ef' af>) <bf f' bf>4 <c af' c> <d f bf d> <bf d f bf>
  }

  \key ef \major \bar "||"
  \relative c, {
    ef8( bf' ef bf) <ef ef,>4 <bf bf,> g8( d' g d) <g g,>4 <bf bf,> <af, bf'>8( ef' af4) bf,8( f' bf f)
    <ef, bf' ef>4 <f c' f> <g d' g> <g ef' g>
    <c c'>8(\< <bf bf'> <af af'> <g g'>) <d' d'>( <c c'> <bf bf'> <af af'>) <ef' ef'>( <d d'> <c c'> <bf bf'>
    <af af'>4) <bf d f bf>-> <c ef af c>-> <d f bf d>-> <ef af c ef>2->\ff\fermata
    <af ef af,>4 <c af c,> <bf f d> <bf f bf,> R1 <ef,, bf' ef g>1\fermata\arpeggio \fine
  }
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
    shortInstrumentName = "Pno."
    %\consists Merge_rests_engraver
  } \compressMMRests <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout {
    \override Score.StaffSymbol.layer = #4
    \override Staff.TimeSignature.layer = #3
    \once \override Staff.TimeSignature.whiteout = ##t
    \override Fingering.staff-padding = #'()
    \override Fingering.add-stem-support = ##f
    \override MultiMeasureRest.expand-limit = 1
  }
  \midi { }
}
