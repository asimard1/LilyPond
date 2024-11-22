\version "2.25.20"
\language "english"

\header {
  title = "Venus"
  instrument = "Alto Sax. 2"
  composer = "Gustav Holst"
  arranger = "Arr. Geert Schrijvers"
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
  \key c \major
  \time 4/4
  \tempo "Adagio"
}

altoSax = \compressMMRests \relative c'' {
  \global
  \transposition ef
  % Music follows here.
  R1*2 r4 <a c>\p\>\( <b d> <c e> <g b>2 <a c>\) f'1\pp~8 r r4 r2 R1*4 \mark\default
  R1*1 r4 <e a>4\( <e g> <bf e> <bf d>1\)~4 <bf c>-- <bf d>-- <bf c>-- R1*3 <a c>1\pp~2 r2 \time 2/4 R2
  \mark\default
  \time 4/4
  R1*8 r2 bf8\(\p d g d'\) \bar "||"
  \mark\default
  \time 3/4 \tempo "Andante" \key ef \major
  <<
    {ef2.~2~8 r} \\
    {<c ef,>2.\mf ~<c^( ef,>2.\> <af) ef>8\!}
  >>
  q4\pp 4 8~8 4 4 8~8 <g d>4 4 8~8 <ef af>4 4 8~8 4 4 8~8 r r4 r
  R2.*4
  \mark\default r8 q4\mf 4 8~8 4 4 8~8 <ef bff'>4 4 8~8 4 4 8~8 <ef af>4 4 8~8 <eff gf>4 4 8
  <ef? af>2\> ~8 r\!
  \override TextSpanner.bound-details.left.text = "rit."
  g2(\p^\markup{"solo"} c,4) g'2( c,4) g'4\(\< c, d8 ef f2\> ef4\)
  \tempo "Animato" R2.*6\! R2.^\markup {\italic "rit."}
  \mark\default \tempo "Meno mosso" R2.*8 \bar "||"

  \tempo "Largo" \key c \major
  <<
    {fs2.\p ~4 e2} \\
    {fs,8\(^\markup{"solo" \italic "espressivo"} a fs'4. e8 d b bf2\)}
  >>
  \tempo "Animato" c8 c4 c c8( fs8) fs4\< fs fs8( g?)\! r r4 r R2.
  \mark\default \tempo "Largo"
  as,8\(\p^\markup{"solo" \italic "espressivo"} cs as'4. gs8 fs ds d2\)
  R2.*3 r8 d4\p\< d d8
  as8(\f cs) as'4.( gs8) fs(\< ds\!) d2-> ~2.\> \bar "||"
  \time 4/4 \tempo "Largo" R1*9\!
  \mark\default R1*7 \bar "||"
  \time 3/4 \tempo "Andante" R2.*17 \bar "||"
  \mark\default \time 4/4 \tempo "Tempo 1" R1*3
  r2 r4 a(\pp g4.) r8 r2
  r4 a'\(-.\pp g-. e-.\)
  ef\( f ef f ef f ef f\) gs1
  ef4\( f ef f\) af\( bf af bf\) bf\( c bf c\) fs,,1\< ~1\> \mark\default R1*12\! \fine
}

\book {
  \score {
    \new Staff \with {
      instrumentName = "Alto Sax"
      shortInstrumentName = "ASx."
      midiInstrument = "alto sax"
    } \altoSax
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 18)
      \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
    }
    \midi { }
  }
  \paper {
    #(set-paper-size "letter")
    page-count = #1
  }
}