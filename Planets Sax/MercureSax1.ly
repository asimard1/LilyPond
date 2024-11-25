\version "2.25.20"
\language "english"


\header {
  title = "Mercure"
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
  \time 6/8
  \tempo "Vivace"
}

altoSaxI = \compressMMRests \relative c'' {
  \global
  \transposition ef
  % Music follows here.
  R2. r4 r8 cs\p( gs es b') r r cs'( gs es) fs( cs' as) r4 r8
  d,,( g b cs) r r b'( fs ds fs cs as cs gs es) r4 r8 r4 r8 \tuplet 4/6 {gs16\p( a b c} cs8) r r
  \tuplet 4/6 {g'16( a b c} cs8) r r r4 r8 R2.*11
  df4\(\p bf c gf bf af\)
  \mark\default gf8\f bf, ef r gf bf, ef r gf bf, ef r R2.*2
  df'8\mf^\markup{\italic "stacc."} bf af f df' bf af f df' bf af f df' bf af f f df df bf bf gf ef r
  R2. \tuplet 4/6 {d'16(\p e fs g} gs8) r r a r r c r r R2.*12

  \mark\default d,4 r8 b4 r8 gs4 r8 es4 r8 r4 d'8-. b-. r gs-. es4
  <<
    {cs'8^\p-. cs-. ds-. cs-. b2.~2.} \\
    \relative c' {es8-.\f es-. fs-. es-. es2.\>~2. <>\!}
  >>
  R2.*3
  r4 es,8\f-. es-. fs-. es-. es2.\>~2. fs'4\p r8 ds4 r8 bs4 r8 a!4 r8
  r4 fs'8 ds r bs a!4 <<
    \relative c'' {f!8-. f-. g-. f-. ef2.~2. } \\
    \relative c' {f!8-.\f f-. g-. f-. ef2.\>~2. <>\!}
  >>
  \mark\default R2.*3\! r4 f'8-.\f f-. g-. f-. e! r r r4 r8 R2.*2 r4 f8-.\f f-. g-. f-. e! r r r4 r8
  r4 f8 f( g f) r4 f8 f( g f) \repeat unfold 6 {b,--[ f'--]}

  \time 2/4
  b,\dim(-- e\!-- \repeat unfold 3 {b-- e--}
  b-- ds-- \repeat unfold 3 {b-- ds--} b--\> ds-- b-- ds--)
  \mark\default R2*18\!
  \time 6/8
  \mark\default a'2.(_\markup{\italic "1 player only"}\pp
  gs~2.) a( gs~2.
  \time 2/4 <fs es,>8-.) gs,-. es-. gs-. es-. gs-. es-. gs-. fs-. a-. fs-. a-. gs-. b-. gs-. b-. a-. d-. a-. d-. a-. d-. a-. d-. \time 6/8 \mark\default
  R2.*6
  e2.\mf(\cresc^\markup{\italic "play all"} d\! e fs a gs)
  \mark\default
  d\f ~2.~2.~2. e~2. cs2.\ff~2.(d) a'2.( g f)
  e4 e( fs) e8( d cs d e d) cs4.( b) a'2.\dim( g\! f)
  \mark\default
  e4\f e( fs) e8( d cs d e d) cs4.( b) e4\dim e(\! fs) e8( d cs d e d) cs4( a b) R2.*4
  R2.\fermata a8^"solo"(\p d fs) gs( ds bs) R2.\fermata R2.
  \mark\default
  R2. r4 r8 cs\p( gs es b') r r cs'( gs es) fs( cs' as) r4 r8
  d,,( g b cs) r r fs( cs as cs gs es) R2. \tuplet 4/6 {g16( a b c} cs8) r r
  \tuplet 4/6 {g'16( a b c} cs8) r r R2.*3 r4 r8 \tuplet 4/6 {g,16( a b c} cs8) r r
  \tuplet 4/6 {g'16( a b c} cs8) r r b r r R2.*5 df4\(\p bf c gf bf af g8\) r r r4 r8 R2.
  r4 r8 r c\f-. e,-. a-. a,-. g'-. e-. a-. a,-. r4 r8 \tuplet 4/6 {g'16(\p a b c} cs8) r r r4 r8 R2.*4
  \mark\default
  gs,8^\markup{\italic "legato"}\pp as b cs ds e fs gs b as e fs ds e fs gs as b cs ds r r b cs
  e ds gs, as cs b gs as ds cs b as gs as fs as gs as fs as gs as fs gs
  e fs gs as b gs b as b gs b as b cs ds e r ds ds cs ds b ds cs R2.*2
  d8->[\f c] bf->[ a] bf->[ c] d8->[ ef] d->[ ef] ff->[ ef]
  cs a gs fs gs a b c b c bf c b8->[ a] gs->[ fs] gs->[ a]
  e'( ds b gs) b( a fs ds) e( ds b gs)
  \mark\default R2. r4 r8
  gs\pp^\markup{\italic "stacc."} as b gs as b cs ds fs e b cs ds e fs gs as b cs b ds cs b cs ds cs b
  fs as gs e cs ds cs as fs r4 r8 R2.
  \mark\default
  as8\pp^\markup{\italic "stacc."} b gs b as b gs b as b gs b bf c af c bf c af c bf c b c
  b df c d cs ef d e! ds f e gf f g! fs af g a fs bf a b as b fs\p e ds cs ds e fs g fs g a g
  gs8->[ as] b->[ cs] b->[ as] af8->[ g] af->[ g] f->[ g] f8->[ g] a->[ bf] a->[ g]
  c, b a g\cresc a\! b c d e f e d e f g a bf c
  \mark\default gs->\f r r r4 r8 R2.*14 r4 a,8-.\p a-. b-. a-. es2.\>~2.~2. r4\!
  f8\p-. f-. g-. f-.
  \mark\default
  e2.\>~2.~2. R2.*5\! r4 e'8\mf-. e-. fs-. e-.
  \mark\default
  d2.\>->~4.\! r R2.*14
  \mark\default
  R2.*2
  \tuplet 4/6 {fs,16( g a b} \tuplet 4/6 {bs cs ds es} fs8)-. r r r4 r8
  R2.*4 r4 b8\pp( g4 e8 cs) r r r4 r8 R2.*6 r4 r8 cs->\pp r r \fine
}

\book {
  \bookOutputName "Mercure Sax1"
  \score {
    \new Staff \with {
      instrumentName = "Alto Sax"
      shortInstrumentName = "ASx."
      midiInstrument = "alto sax"
    } \altoSaxI
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 18)
      \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
    }
    \midi { }
  }
  \paper {
    #(set-paper-size "letter")
    page-count = #2
  }
}
