\version "2.25.20"
\language "english"

\header {
  title = "Venus"
  instrument = "Alto Sax. 1"
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

altoSax = \compressMMRests \relative c' {
  \global
  \transposition ef
  % Music follows here.
  R1*2 r4 f(\p\> g a g2 a) bf1\pp~8 r r4 r2 R1*4 \mark\default
  R1*1 r4 bf( bf g g1~) 4 4-- 4-- 4-- R1*5 \time 2/4 R2
  \mark\default
  \time 4/4
  R1*8 r8 d8\(\p g a\cresc bf\! d g d'\) \bar "||"
  \mark\default
  \time 3/4 \tempo "Andante"
  <<
    {ds2.->~2~8 r} \\
    {c,2.\mf-> ~2.\> ~8\!}
  >>
  c4\pp 4 8~8 4 4 8~8 b4 4 8~8 c4 4 8~8 4 4 8~8 r r4 r
  R2.*4
  \mark\default r8 c4\mf 4 8~8 4 4 8~8 b4 4 8~8 4 4 8~8 c4 4 8~8 r r4 r
  c2\>~8\!r
  \override TextSpanner.bound-details.left.text = "rit."
  R2.*4
  \tempo "Animato" b2.\mp\cresc( a\! gs g fs\<) g'\f~2.\>^\markup {\italic "rit."}
  \mark\default \tempo "Meno mosso" R2.*8\! \bar "||"

  \tempo "Largo"
  fs2.\p ~4 e2
  \tempo "Animato" gs8 gs4 gs gs8( fs8) fs4\< fs fs8( g?)\! r r4 r R2.
  \mark\default \tempo "Largo"
  R2.*5 r8 gs4\p\< gs gs8
  as,8(\f cs) as'4.( gs8) fs(\< ds\!) d2-> ~2.\> \bar "||"
  \time 4/4 \tempo "Largo" as8(^\markup{\italic "solo"}\p\< cs) \after 4 \> as'4.( gs8) fs( ds\!)
  \after 4 \> d!1~4\! r r2 R1*6\!
  \mark\default R1*2 g2(\mp^\markup{\italic "solo"} a4\dim bf\! c2 d ef4 f c8) r r4 R1*2 \bar "||"
  \time 3/4 \tempo "Andante" R2.*17 \bar "||"
  \mark\default \time 4/4 \tempo "Tempo 1" R1*3
  r2 r4 c,(\pp bf4.) r8 r2
  r4 a'\(-.\pp g-. e-.\)
  g\( f g f g f g f\) gs1
  ef4\( f ef f\) af\( bf af bf\) bf\( c bf c\) ds1\< ~1\> \mark\default R1*12\! \fine
}

\book {
  \bookOutputName "Venus Sax1"
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