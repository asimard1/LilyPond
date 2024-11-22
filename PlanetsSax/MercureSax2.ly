\version "2.25.20"
\language "english"


\header {
  title = "Mercure"
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
  \time 6/8
  \tempo "Vivace"
}

altoSax = \compressMMRests \relative c'' {
  \global
  \transposition ef
  % Music follows here.
  R2. d,8\(\p g b cs\) r r d\( g b cs\) r r r4 r8 cs\( gs es\) r4 r8 cs8\( gs es ds\) r r r4 r8
  R2.*2 \tuplet 4/6 {cs'16\p\( ds es fs} \tuplet 4/6 {g a b c} cs8\) r r r4 r8 R2.*11
  df4\(\p bf c gf bf af\)
  \mark\default df,8\f r bf r df r bf r df r bf r R2.*2
  bf'8\mf^\markup{\italic "stacc."} ef, f bf, bf' ef, f bf, bf' ef, f bf,
  bf' ef, f bf, df gf, bf ef, gf c, gf' ef
  R2. r4 r8 \tuplet 4/6 {cs'16\(\p ds es fs} g8\) r r gs r r <b d> r r r4 r8 r4 r8 cs r r R2.*10

  \mark\default <b, e>4 r8 <g cs>4 r8 <e a>4 r8 <cs fs>4 r8 r4 <b' e>8-. <g cs>-. r <e a>-. <cs fs>4
  <<
    {cs'8-. cs-. ds-. cs-. b2.~2.} \\
    {as8-.\f as-. b-. as-. g2.\>~2. <>\!}
  >>
  R2.*3
  r4 cs8\f-. cs-. ds-. cs-. ds2.\>~2. <ds gs>4\p r8 <b es>4 r8 <gs cs>4 r8 <es as>4 r8
  r4 <ds' gs>8 <b es> r <gs cs> <es as>4 <css es>8 <css' es> <ds fss> <css es>
  <<
    {ds2.\>~2. <>\! }
    \\ {b2.~2.}
  >>
  \mark\default R2.*3 r4 d8-.\f d-. ef-. d-. e! r r r4 r8 R2.*2 r4 d8-.\f d-. ef-. d-. e! r r r4 r8
  r4 d8 d\( ef d\) r4 d8 d\( ef d\) \repeat unfold 6 {e,--[ d'--]}
  \time 2/4
  e,\dim\(-- cs'\!-- \repeat unfold 3 {e,-- cs'--}
  e,-- c'!-- \repeat unfold 3 {e,-- c'--} e,--\> c'-- e,-- c'--\)
  \mark\default \time 6/8 R2.*6\!
  e4^"solo"\p e( fs) e8\( d cs d e d\) cs4.( b) e4 e( fs) e8\( d cs d e d\) cs4\( a b\)
  \mark\default R2.*6 \time 2/4 \repeat unfold 4 {fs8-. as-.} \repeat unfold 2 {g8-. b-.}
  \repeat unfold 2 {as8-. cs-.} \repeat unfold 4 {b8-. d-.}
  \time 6/8 \mark\default
  e4\p\cresc e\!( fs) e8\( d cs d e d\) cs4.( b) e4 e( fs) e8\( d cs d e d\) cs4\( a b\)
  gs2.\mf\(\cresc^\markup{\italic "play all"} fs\! gs cs cs ds\)
  \mark\default
  g,!\f ~2.~2.~2.~2.~2. a2.\ff~2.~2. a'2.\( g f\)
  e4 e( fs) e8\( d cs d e d\) cs4.( b) a2.\dim\( g\! f\)
  \mark\default
  e'4\f e( fs) e8\( d cs d e d\) cs4.( b) R2.*7 R2.\fermata R2. R2.\fermata R2.
  \mark\default
  R2. d,8\(\p g b cs\) r r d\( g b cs\) r r r4 r8 cs\( gs es\) r4 r8 cs8\( gs es ds\) r r r4 r8 R2.
  r4 r8 \tuplet 4/6 {df'16\( ef f gf} g!8\) r r r4 r8 R2.*4
  \tuplet 4/6 {df16\( ef f fs} g8\) r r f r r b r r R2.*4
  <d, g>8 r <b e> r <c fs> r <g c> r <b e> r <a d> r R2.
  g'4\( e fs c e d\) c'8-. e,-. a-. a,-. g'-. r e-. r c'-. e,-. c-. r
  \tuplet 4/6 {df16\(\p ef f fs} g8\) r r R2.*5
  \mark\default
  ds,8^\markup{\italic "legato"} e fs gs as b cs ds fs e b cs b cs ds e fs gs as b ds cs gs as?
  cs b e, fs as gs ds e as gs fs e ds e cs e ds e cs e ds e cs ds
  cs ds e fs gs e gs fs gs e gs fs gs as b cs ds b as gs as fs as? gs R2.*2
  bf8->[\f a] g->[ f] g->[ a] bf8->[ cf] bf->[ cf] df->[ cf]
  gs fs e ds e fs gs a gs a bf a gs8->[ fs] e->[ ds] e->[ fs]
  a\( gs e cs\) e\( ds b gs\) a\( gs e cs\)
  \mark\default R2. r4 r8
  cs\pp^\markup{\italic "stacc."} e fs e fs gs as b ds cs gs as b cs ds e fs gs as b ds
  cs gs as b as fs ds fs e cs as b as fs ds r4 r8 R2.
  \mark\default
  e8\pp^\markup{\italic "stacc."} fs gs fs e fs gs fs es fs gs fs f! g! r g f g r g f g fs g fs af g a gs bf
  a b! as c b cs c! d cs ef d e ds f e gf f f fs e ds cs ds e fs g fs g a g
  ds8->[ cs] b->[ as] b->[ cs] ds8->[ e] ds->[ e] f->[ e] d!8->[ e] f->[ g] f->[ e]
  f\cresc e\! d c d e d c bf a bf c bf a d c bf a
  \mark\default gs->\f r r r4 r8 R2.*14 r4 <fs' a>8-.\p q-. <gs b>-. <fs a>-. <es as>2.\>~2.~2. r4\!
  <d f>8\p-. q-. <e g>-. <d f>-.
  \mark\default
  <e gs>2.\>~2.~2. R2.*4\! r4 cs8\mf-. cs-. d-. cs-.
  \mark\default
  b2.\>->~4.\! r R2.*14
  \mark\default
  R2.*2
  <<
    {
      \tuplet 4/6 {g16\( a b c} \tuplet 4/6 {cs ds es fs} \once \omit Stem
      \once \omit Flag g!8\)
    } \\
    {\tuplet 4/6 {d,16\( e fs g} \tuplet 4/6 {gs as bs cs!} g'!8^.\)}
  >>
  r r r4 r8 R2.*4
  r4 fs8\pp\( d4 b8 gs\) r r r4 r8 R2.*6 r4 r8 gs->\pp r r \fine
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
    page-count = #2
  }
}
