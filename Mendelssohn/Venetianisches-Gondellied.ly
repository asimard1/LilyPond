\version "2.25.20"
\language "english"

\header {
  title = "Venetianisches Gondellied"
  composer = "Felix Mendelssohn Bartholdy"
  % Remove default LilyPond tagline
  tagline = ##f
}

piuF =
#(make-dynamic-script
  (markup #:hspace 0
          #:translate '(-18.85 . 0)
          #:line (#:normal-text
                  #:italic "più"
                  #:dynamic "f")))

\paper {
  #(set-paper-size "letter")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
  }
}

global = {
  \key fs \minor
  \numericTimeSignature
  \time 6/8
  \partial 8
  \tempo "Allegretto tranquillo"
}

right = \relative c' {
  \global
  % Music follows here.
  r8 R2.*2 es2.( gs) R2.
  r4 r8 r8 a(_\markup{\italic "cantabile"} b cs4.) 4. 4.~4 8 cs8( a' gs fs e d)
  cs4 r8 fs,4. a~4 b8 cs4.
  <<
    \relative c'' {
      fs es <gs>~ \once \omit Accidental \stemNeutral <gs^~ es_~>4. <gs es>8 a,8( b cs4.)
    } \\
    \relative c'' {s4. es2.~\once \omit Stem \once \omit Flag 4.}
  >>
  cs4. 4.~4 cs8 cs( a' gs fs e d) cs( fs e  d cs bs) cs( a cs) fs,4.~4 gs8 es4 gs8
  \repeat volta 2 {
    fs4.~4 r8 r4 r8 r es( fs <es gs>4.) 4. <fs a>~8 <es gs>8( <fs a> <gs b>4.) 4. <a cs>~8 <fs a>( <gs b>
    <a cs>4.) 4. <bs ds>4.-> 4.-> <cs es>2.(-> <es gs>->)
    R2. r4 r8 r8 r8 cs'\startTrillSpan~2.~2. e8(\stopTrillSpan d cs b g fs e d cs b_\prall a b)
    cs4. 4. 4.~4 8
    <<
      \relative c''' {cs2.~4} \\
      \relative c'' {cs8( a' gs fs e d cs fs e d cs bs)}
    >>
    cs( a cs) fs,4.~4( gs8 es4 gs8)
  }

  fs4. r8 r <a, cs fs>8~4 <a cs e!>8~4 <a d>8~4 <fs a cs>8~4 es''8\startTrillSpan~2._(
  \grace{ds32\stopTrillSpan es)} cs'4( a8 fs4)
  <a,, cs fs>8~4 <a cs e!>8~4 <a d>8~4 <fs a cs>8~4 es''8\startTrillSpan~2._( |
  \grace{ds32\stopTrillSpan es)} cs'4( a8 fs4 cs8) cs'4( a8 fs4 cs8) |
  cs'4.~4 a8 fs2.~2.\fermata \fine
}

left = \relative c {
  \global
  % Music follows here.
  cs8 \sustainOn
  fs,( cs' <fs a> cs q cs') fs,,( cs' <fs a> cs q cs')
  fs,,\sustainOff\sustainOn cs' <es gs> cs q cs' fs,, cs' <es gs> cs q cs'
  fs,, cs' <gs' b> <b d>(\sustainOff cs, <a' cs>
  <gs b> cs, <fs a> <es gs> <fs a> <gs b>)
  fs,(\sustainOn cs' <fs a> cs q cs')
  fs,,\sustainOff\sustainOn cs' <es gs> cs q cs'
  fs,,\sustainOff\sustainOn cs' <fs a> cs q cs'
  fs,, cs' <fs a> cs q cs'
  fs,, cs' <fs a> cs q cs'
  a,, cs' <fs a> cs q cs'
  cs,,\sustainOff\sustainOn cs' <gs' b> <b d>( cs, <a' cs>
  <gs b>\sustainOff cs, <fs a> <es gs> <fs a> <gs b>)
  fs,(\sustainOn cs' <fs a> cs q cs')
  fs,,\sustainOff\sustainOn cs' <es gs> cs q cs'
  fs,,\sustainOff\sustainOn cs' <fs a> cs q cs'
  fs,, cs' <fs a> cs q cs'
  a,, cs' <fs a> cs q cs'
  cs,,\sustainOff\sustainOn cs' <gs' b> cs, q cs'
  fs,,\sustainOff\sustainOn cs' <fs a> cs q cs' cs, q cs' cs, q cs'
  cs,,\sustainOff\sustainOn cs' <gs' b> cs, q cs'
  fs,,\sustainOff\sustainOn cs' <fs a> cs q cs'
  e,,\sustainOff\sustainOn e' <b' d> e, q e'
  a,,\sustainOff\sustainOn e' <a cs> e q  e' a,, e' <a cs> e q  e'
  fs,,\sustainOff\sustainOn a' <ds fs> a q a'
  cs,,,\sustainOff\sustainOn es' <gs cs> es q es'
  cs,, es' <gs cs> es q es'
  cs,,( cs' <gs' b> <b d>\sustainOff cs, <a' cs> <gs b> cs, <fs a> <es gs> <fs a> <gs b>)
  as,(\sustainOn e'! <g! cs> e q e') as,,( e' <g! cs> e q e')
  b,(\sustainOff\sustainOn fs' <b d fs>) \after 8 \sustainOff r4 r8 r4 r8 d,,4.
  cs8(\sustainOn cs' <fs a> cs q cs') cs,,(\sustainOff\sustainOn cs' <es gs> cs q cs')
  fs,,\sustainOff\sustainOn cs' <fs a> cs q cs'
  fs,,\sustainOff cs' <fs a> cs q cs'
  a,,\sustainOn cs' <fs a> cs q cs' cs,,\sustainOff\sustainOn cs' <gs' b> cs, q cs'

  fs,,(\sustainOff\sustainOn cs' <fs a>) fs,8( fs'4) fs,8( fs'4) fs,8( fs'4)
  e,8(\sustainOff e'4) d,8( d' <fs b>)
  cs,\sustainOn cs' <gs' b> cs, q cs'
  fs,,(\sustainOff\sustainOn cs' <fs a>) fs,8( fs'4) fs,8( \after 8 \sustainOff fs'4) fs,8( fs'4)
  e,8( e'4) d,8( d' <fs b>)
  cs,\sustainOn cs' <gs' b> cs, q cs'
  fs,,(\sustainOff\sustainOn cs' <fs a> cs q cs')
  fs,,( cs' <fs a> cs q cs')
  fs,,( cs' <fs a> cs q cs') r r cs,( <fs a cs>) r cs( fs,) r r \after 8 \fermata r4 r8 \fine
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Dynamics {
      s8\p s2. s2. s2.\f\> s2.\! s8\dim s4\! s4. s2 s4\p
      s2. s2. s4.\< s4.\> s2.\! s2. s4. s4.\< s4.\sfz s4.\sfz s4. s4.\p
      s2. s2. s4.\< s4.\> s2.\! s2. s2. s2. s2. s2. s2 s8\cresc s8
      s2.\! s2 s4-\piuF s2. s2. s2.\ff s2.\sfz
      s4 s8\dim s4.\! s4. s4 s8\pp s2.\< s2.\> s2.\sfz s8\dim s4\! s4. s2.\p s2.
      s8\< s8\> s8\! s4. s2. s2.\p s2. s4. s4. s8 \cresc s4\! s4. s4. s4 s8\f s8\dim s4\! s4. s2.\p
      s8\cresc s4\! s4. s4. s4 s8\f s4.\sfz s8\dim s4\! s2.\sfz s8\dim s4\! s4. s2.\> s2.\pp s2.
    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout {
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
  }
  \midi { }
}
