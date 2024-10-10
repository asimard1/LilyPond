\version "2.25.20"
\language "english"

\header {
  title = "Hollow Knight — Medley"
  subtitle = "Higher beings, these words are for you alone."
  composer = "Christopher Larkin"
  arranger = "arr. Alexandre Simard"
  % Remove default LilyPond tagline
  tagline = ##f
}

\layout {
  \context {
    \StaffGroup
    \RemoveAllEmptyStaves
  }
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

global = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
  \set countPercentRepeats = ##t
  \set repeatCountVisibility = #(every-nth-repeat-count-visible 4)
  \key e \minor
  \overrideTimeSignatureSettings
  3/4
  1/4
  1,1,1
  #'()
}

greenPathLeftHand = \fixed c {
  e,8-. b,-. e4-. r4 b,,8-. fs,-. cs4-. r4 c,8-. g,-. d4-. r4 a,,8-. e,-. b,4-. r4
  b,,8-. fs,-. cs4-. r4 g,,8-. d,-. a,4-. r4 a,,8-. e,-. b,4-. r4 c,8-. g,-. e4-. r4
}
greenPathLeftHandB = \fixed c {
  e,8-. b,-. e-. r4. b,,8-. fs,-. cs-. r4. c,8-. g,-. d-. r4. a,,8-. e,-. b,-. r4.
  b,,8-. fs,-. cs-. r4. g,,8-. d,-. a,-. r4. a,,8-. e,-. b,-. r4. c,8-. g,-. e-. r4.
}
greenPathRightHand = \fixed c'' {fs8( b,16 e fs8 b,16 e fs8 b,16 e fs8 b,16 e fs8 b,16 e b8 b,16 e)}
greenPathRightHandB = \fixed c'' {fs8( b,16 e fs8 b,16 e fs8 b,16 e fs8 e16 fs, d8 e b, a,)}

greenPathPatternA = {e8-.\f e16-. e-. r e8-. e16-. r fs-. fs8-. fs-. fs16-. fs-. r g8-. g16-. r a-. a8-.}
greenPathPatternB = {
  \override TextSpanner.bound-details.left.text = "poco rit."
  \mark\default b8-. b16-. b-. r b8-. b16-. r b-. b8-. b-. b16-. b-. r b8-. b16-. r b-. b8-.
  b8-. b16-. b-. r b8-. b16-. r b-. b8-. b-. b16-. b-. r b8-. b16-. r b-. b8-.
  b8-. b16-. b-. r b8-. b16-. r b-. b8-. b-. b16-. b-. r b8-. b16-. r b-. b8-.
  b8-.\startTextSpan b16-. b-. r b8-. b16-. r b-. b8-. b-. b16-. b-. r b8-. b16-. r b-. b-. b-.\stopTextSpan
}
greenPathBassA = {
  c8-.\mp r g'-. c,-. r g'-. d-. r a'-. r b r e,-. r b'-. e,-. r b'-. a,-. r a'-. r b-. r
  a,-. r g'-. a,-. r g'-. a,-. r a'-. r b-. r e,-. r b'-. e,-. r b'-. e,-.\< r b'-. r b-. r\!
}
greenPathBassPreB = {
  {e8-.\f e16-. e-. r e-. e8-. e-. e-.} {b8-. b16-. b-. r b-. b8-. b16-. b-. b8-.}
  {c8-. c16-. c-. r c-. c8-. c-. c-.} {a8-. a16-. a-. r a-. a8-. a16-. a-. a8-.}
  {b8-. b16-. b-. r b-. b8-. b-. b-.} {g8-. g16-. g-. r g-. g8-. g-. g-.}
  {a8-. a16-. a-. r a-. a8-. a-. a-.} {c8-.\< c16-. c-. r c-. c8-. c-. c-.}
}
greenPathBassB = {
  \override TextSpanner.bound-details.left.text = "poco rit."
  {e8-.\ff e16-. e-. r e-. e8-. e-. e-.} {b8-. b16-. b-. r b-. b8-. b16-. b-. b8-.}
  {c,8-. c16-. c-. r c-. c8-. c-. c-.} {a'8-. a16-. a-. r a-. a8-. a16-. a-. a8-.}
  {b8-. b16-. b-. r b-. b8-. b-. b-.} {g8-. g16-. g-. r g-. g8-. g-. g-.}
  {a8-. a16-. a-. r a-. a8-. a-. a-.} {c8-. c16-. c-. r c-. c8-. c-. c-.}
  \mark\default {e8-. e16-. e-. r e-. e8-. e-. e-.} {b8-. b16-. b-. r b-. b8-. b16-. b-. b8-.}
  {c,8-. c16-. c-. r c-. c8-. c-. c-.} {a'8-. a16-. a-. r a-. a8-. a16-. a-. a8-.}
  {b8-. b16-. b-. r b-. b8-. b-. b-.} {g8-. g16-. g-. r g-. g8-. g16-. g-. g8-.}
  {a8-.\startTextSpan a16-. a-. r a-. a8-. a-. a-.} {c8-. c16-. c-. r c-. c8.-. c16-. c-. c-.\stopTextSpan}
}
greenPathBassC = {
  \override TextSpanner.bound-details.left.text = "poco rit."
  {b8-.\ff b16-. b-. r b-. b8-. b-. b-.} {fs8-. fs16-. fs-. r fs-. fs8-. fs16-. fs-. fs8-.}
  {g,8-. g16-. g-. r g-. g8-. g-. g-.} {e'8-. e16-. e-. r e-. e8-. e16-. e-. e8-.}
  {fs8-. fs16-. fs-. r fs-. fs8-. fs-. fs-.} {d8-. d16-. d-. r d-. d8-. d-. d-.}
  {e8-. e16-. e-. r e-. e8-. e-. e-.} {e8-. e16-. e-. r f-. f8-. f-. f-.}
  {\mark\default fs8-. fs16-. fs-. r fs-. fs8-. fs-. fs-.} {fs8-. fs16-. fs-. r fs-. fs8-. fs16-. fs-. fs8-.}
  {fs,8-. fs16-. fs-. r fs-. fs8-. fs-. fs-.} {fs'8-. fs16-. fs-. r fs-. fs8-. fs16-. fs-. fs8-.}
  {fs8-. fs16-. fs-. r fs-. fs8-. fs-. fs-.} {fs8-. fs16-. fs-. r fs-. fs8-. fs16-. fs-. fs8-.}
  {fs8-.\startTextSpan fs16-. fs-. r fs-. fs8-. fs-. fs-.} {fs8-. fs16-. fs-. r fs-. fs8.-. fs16-. fs-. fs-.\stopTextSpan}
}

scoreAPiccolo = \relative c'' {
  \global
  \transposition c''
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*14 e1\mp\>~
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  e2.~2.~2.~2. \mark\default R2.*16\!

  \time 6/8 \mark\default
  R2.*16 \mark\default R2.*2 {b'16->\mf ( e, fs d e8-.) b'16->( e, fs d e8-.)}
  R2. {fs16->\mp ( b, cs a b8-.) fs'16->( b, cs a b8-.)}
  R2. {b'16->\mf ( e, fs d e8-.) b'16->( e, fs d e8-.)} R2.
  \mark\default
  b'2.\p^\markup {\italic "expressivo"}\< \startTrillSpan~2.\> r4\!\stopTrillSpan b8\mp\>~4.~2. r4\!
  b8\mp\>~4.~2. r4\! b8\mp\>~4.~2. \mark\default R2.*14\!

  \relative c'' {\greenPathPatternA \greenPathPatternB}

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145
  \time 2, 2, 2 3/4
  \set Timing.beamExceptions = #'()
  \key a \minor
  \repeat volta 2 {
    a8\fp r r e r4 g8 r r4 c,8 r e r r e r4 d8 r r4 b8 r e r r e r4 g8 r r4 c,8 r
    e-.->\< e-. e-. f-.-> f-. f-. g-.-> g-. g-. a-.-> a-. a-.
    \time 4/4 b-.-> b-. b-. b-. c-.-> c-. c-. c-. \time 3/4
    d\mf\<(-> c b) c(-> b a) d(-> c b) c(-> b a) g(-> f e) f(-> e d)
    \tuplet 3/2 {d\f-.-> c-. bf-.} \tuplet 3/2 {bf-.-> a-. g-.} \tuplet 3/2 {f'-.-> e-. d-.}
    \mark\default a'4-.-> r r
    R2.*5
    \alternative {
      \volta 1 {
        R2.*2 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a,8\p r a r a r a r a r a r a\< r b r c r d r e r g r a4.\f d c b a8 r r4 r R2. a4. d c b a8 r r4 r R2.*5
        cs,4.\mf\< fs e ds a'8\fp\<-.-> a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-. a\fp r r e r4 g8 r r4 c,8 r
        bf'\< r r bf r4 bf8 r r bf r4 a8\fp r r e r4 g8 r r4 r bf8\< r r bf r4 bf8 r r bf r4 a8\!\fp r r4 r R2.*5
        d8 c->( b) c->( b a) c->( b a) g->( f e) e r r a r4 a-.\< b-. a-.
        a16\f( b c8--) r a\p r4 a-. a-. a-. a8 r r a r4 a-.\< b-. a-.
        a16\f( c d8--) r a\p r4 a16\f ( d e8--) r4 r
      }
      \volta 2 {
        R2.*2 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a,4.\mf e'->~2. g4-> f d e-> c b a4. d c b a8->
      }
    }
  }
}

scoreAFluteI = \relative c'' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default e2.\pp~2. R2.*2 \repeat unfold 3 {e2.~2. R2.*2}

  \time 6/8 \mark\default
  R2. {fs'16->\pp ( b, cs a b8-.) fs'16->( b, cs a b8-.)}
  R2.*14 {\mark\default fs'16->\mp ( b, cs a b8-.) fs'16->( b, cs a b8-.)}
  R2.*3 {fs16-> ( b, cs a b8-.) fs'16->( b, cs a b8-.)}
  R2. {b'16->\mf ( e, fs d e8-.) b'16->( e, fs d e8-.)} R2. \mark\default R2.
  {cs16 (b cs fs e fs cs' b cs fs e fs)} R2.*3 {cs,16 (b cs fs e fs cs' b cs fs e fs)} R2.
  {fs8-.\mp\< e-. d-. b-. b-. a-. \mark\default e-.\! r r r4.}
  R2.*13
  \relative c'' {\greenPathPatternA \greenPathPatternB}

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a'8\fp-.-> e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b)
    e-.-> e-. e-. e-.-> e-. e-. d->( c) a( c) b->( g)
    e'-.-> e-. e-. e-.-> e-. e-. g->( f) d( e) c-> (b) e,->-. r r4 r R2.
    \time 4/4 R1 \time 3/4
    d'8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g'->( f e) f->( e d)
    \tuplet 3/2 {d-.->\f c-. bf-.} \tuplet 3/2 {bf-.-> a-. g-.} \tuplet 3/2 {f-.-> e-. d-.}
    \mark\default a'4-.-> r r R2.*5

    \alternative {
      \volta 1 {
        R2.*2  \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a,16\p( e f gs a8-.) r a16( e f gs a8-.) r a16( e f gs a8-.) r
        a16\<( f gs a b8-.) r c16( a b c d8-.) r e16( d e f g8-.) r
        a4.\f d c b a8-> r r4 r R2. a4. d c b a8-> r r4 r R2.
        a4.\p\< d c b R2.*2\! cs4.\mf\< fs e ds a8->-.\fp\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-.
        a'-.->\fp e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b) e->\< e e e-> e e e-> e e e-> e e
        a-.->\fp e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b) e->\< e e e-> e e e-> e e e-> e e
        a,\fp c->( b a b c) a c->( b a b c) d c->( b) c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) f e->( d) e->( d c) e->( d c) b->( a gs)
        a c->( b a b c) a c->( b a b c) d-> r r c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) d-> r r4 r e8-> r r4 r
      }
      \volta 2 {
        R2.*2 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a,4.\mf e'->~2. g4-> f d e-> c b a4. d c b
        f,16\p
      }
    }
  }
}

scoreAFluteII = \relative c'' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*2 e2.\pp~2. \repeat unfold 3 {R2.*2 e2.~2.}

  \time 6/8 \mark\default
  R2.*16 {\mark\default fs16->\mp ( b cs a b8-.) fs16->( b cs a b8-.)}
  R2.*3 {fs,16-> ( b cs a b8-.) fs16->( b cs a b8-.)}
  R2. {b16->\mf ( e fs d e8-.) b16->( e fs d e8-.)} R2.

  {
    \mark\default
    fs16-> ( b, cs a b8-.) fs'16->( b, cs a b8-.)
  }
  R2. {b'16-> ( e, fs d e8-.) b'16->( e, fs d e8-.)} R2.
  {fs16-> ( b, cs a b8-.) fs'16->( b, cs a b8-.) R2. b'16-> ( e, fs d e8-.) b'16->( e, fs d e8-.)}
  R2. \mark\default R2.*14
  \relative c'' {\greenPathPatternA \greenPathPatternB}

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a8\fp-.-> e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b)
    e-.-> e-. e-. e-.-> e-. e-. d->( c) a( c) b->( g)
    e'-.-> e-. e-. e-.-> e-. e-. g->( f) d( e) c-> (b) e->-. r r4 r R2.
    \time 4/4 R1 \time 3/4
    d'8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g->( f e) f->( e d)
    \tuplet 3/2 {d'-.->\f c-. bf-.} \tuplet 3/2 {bf-.-> a-. g-.} \tuplet 3/2 {f-.-> e-. d-.}
    \mark\default a4-.-> r r R2.*5

    \alternative {
      \volta 1 {
        R2.*2  \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        r4 a16\p (e f gs a8-.) r a16 (e f gs a8-.) r a16 (e f gs
        a8-.\<) r b16 (gs a b c8-.) r d16 (b c d e8-.) r g16( e f g)
        a4.\f d, c b a8-> r r4 r R2. a'4. d, c b a8-> r r4 r R2.
        a'4.\p\< d, c b R2.*2\! cs4.\mf\< fs e ds a8->-.\fp\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-.
        a'-.->\fp e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b) e->\< e e e-> e e e-> e e e-> e e
        a-.->\fp e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b) e->\< e e e-> e e e-> e e e-> e e
        a,\fp c->( b a b c) a c->( b a b c) d c->( b) c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) d' c->( b) c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) d-> r r c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) d-> r r4 r e8-> r r4 r
      }
      \volta 2 {
        R2.*2 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a,,4.\mf e'->~2. g4-> f d e-> c b a4. d c b
        r4
      }
    }
  }
}

scoreAOboe = \relative c'' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*8
  e1\p~2\< e, a \tuplet 3/2 {a4( b c )} bf1\f\> c R1*2\!
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*6 {r2 g4\mf a4.(c b2.~2 e4) b2. e d4.( cs d b) a2. a4. c(}

  \time 6/8 \mark\default
  b2.)\> R2.*15\! \mark\default R2.*4
  {fs'16\mp-> ( b, cs a b8-.) fs'16->( b, cs a b8-.)}
  R2. {b'16->\mf ( e, fs d e8-.) b'16->( e, fs d e8-.)} R2.
  {
    \mark\default
    fs16-> ( b, cs a b8-.) fs'16->( b, cs a b8-.)
  } R2. {b'16-> ( e, fs d e8-.) b'16->( e, fs d e8-.)} R2.
  {fs16-> ( b, cs a b8-.) fs'16->( b, cs a b8-.)} R2. {b'16-> ( e, fs d e8-.) b'16->( e, fs d e8-.)}
  {fs-.\mp\< e-. d-. b-. b-. a-. \mark\default e-.\! r r r4.} R2.*13
  \relative c' {\greenPathPatternA \greenPathPatternB}

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a8\fp r r e r4 g8 r r4 c8->( b) e, r r e r4 d8 r r4 b'8 r a r r e r4 g8 r r4 c8->( b)
    e-.->\< e-. e-. f-.-> f-. f-. g-.-> g-. g-. a->-. a-. a-.
    \time 4/4 b-.-> b-. b-. b-. c->-. c-. c-. c-. \time 3/4
    d8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g->( f e) f->( e d) d-.->\f r r4 r
    \mark\default a4.\mf e'->~2. g4-> f d e-> c b a4.-> d c b

    \alternative {
      \volta 1 {
        a r R2. \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a8\p r a r a r a r a r a r a\< r b r c r d r e r g r a4.\f d c b a8-> r r4 r R2. a4. d c b a8 r r4 r R2.*3
        b4.\mp\< e d b R2.*2 e,2.\fp\<~2. a,8\fp r r e r4 g8 r r4 c8( b) bf\< r r bf r4 bf8 r r bf r4
        a8\fp r r e r4 g8 r r4 c8( b) bf\< r r bf r4 bf8 r r bf r4 a8\fp r r4 r R2.*5
        f'8 e->( d) e->( d c) e->( d c) b->( a gs) a r r a r4 a-.\< b-. a-. a16\f(b c8--) r a\p r4 a-. a-. a-.
        a8 r r a r4 a-.\< b-. a-. a16\f( c d8--) r a\p r4 a16\f( d e8--) r4 r
      }
      \volta 2 {
        R2.*3 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        g8-.\mf f-. d-. e-. c-. b-. g'4-> f d e-> c b a4. d c b a8->
      }
    }
  }
}

scoreABassoon = \relative c' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 {
    \mark \default
    fs1^\markup{ \italic "solo" }\mf~ 2 \tuplet 3/2 {fs4( g a)} fs2. b,4( cs1) e\<(fs2) g4(a) b2..\! c8( b2\> g)
    fs1\mf~ 2 \tuplet 3/2 {fs4( g a)} fs1(cs'2.) a4(g1) fs2. d4\<(cs2) \grace {d16( cs} b2\f)
    \override TextSpanner.bound-details.left.text = "poco rit." cs2.\>\startTextSpan (e4\stopTextSpan)
    \mark \default e1\mf^\markup {\bold {a tempo}}\!->~1\> R1*13\!
  }
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  
  R2.*4
  \transpose c c' {
    \fixed c {
      \mark\default
      R2.*8
      \clef bass e,8-.^\markup{\italic "quasi pizz."} b,-. e4-. r4 b,,8-. fs,-. cs4-. r4
      c,8-. g,-. d4-. r4 a,,8-. e,-. b,4-. r4
      b,,8-. fs,-. cs4-. r4 g,,8-. d,-. a,4-. r4 a,,8-. e,-. b,4-. r4 c,8-. g,-. e4-. r4
    }
  }

  \time 6/8 \mark\default
  \repeat unfold 2 \transpose c c' {\greenPathLeftHandB}

  \mark\default e,2.\f^\markup{\italic "solo"}
  fs g c, a~4.~8 b4 c2. {e,16\f-. fs-. b-. fs-. b-. cs-. cs-. cs-. e-. cs-. e-. fs-.}
  \mark\default \greenPathBassA \mark\default R2.*8
  \greenPathBassB

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a8\fp-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-. a-.-> a-. a-. a-.-> a-. a-. f-.-> f-. f-. f-. g-.-> r
    a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-. a-.->\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-.
    \time 4/4 f-.-> f-. f-. f-. f-.-> f-. f-. f-. \time 3/4
    d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. bf-.-> bf-. bf-. bf-.-> bf-. bf-. bf2.\f\>
    \mark\default a4-.->\p r r g'8->\mf f d e c-> b e-> r r4 r R2.*2 e8-> d b c a-> b

    \alternative {
      \volta 1 {
        a-> r r4 r R2. \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4.\f e'->~2. g4->\< f d e c b
        a8-.->\fp\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-. e-.->\f r r4 r R2.
        a8-.->\fp\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-. e-.->\f r r4 r R2.
        fs8-.->\< fs-. fs-. fs-.-> fs-. fs-. f?-.-> f-. f-. f-.-> f-. f-.
        gs-.-> gs-. gs-. gs-.-> gs-. gs-. g?-.-> g-. g-. g-.-> g-. g-.
        bf-.-> bf-. bf-. bf-.-> bf-. bf-. a-.-> a-. a-. a-.-> a-. a-.
        f-.->\fp\< f-. f-. f-.-> f-. f-. f-.-> f-. f-. f-.-> f-. f-.
        a-.->\fp a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. bf2.\<~2.\f\>
        a8-.->\p a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. bf2.\<~2.\f\>
        a8-.->\p a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-.
        a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-.
        a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-.
        a-. a-. a-. a-. a-. a-. b-.-> b-. a-.-> a-. g-.-> g-.
        f-.-> f-. r f-. f-. f-. f-. f-. r f-. f-. f-.
        f-. f-. r f-. f-. f-. f-. f-. r f-. d-.\< d-.
        d2\f\> e8-.\p\< e-. e2\f d8-.\> d-. a'-.\p\< a-. b-. b-. c-. c-. b-. b-. c-. c-. d-. d-.
      }
      \volta 2 {
        a->\! r r4 r R2. \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a8-.->\mf a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-. a-.
        ef'-.-> ef-. ef-. ef-.-> ef-. ef-. d-.-> d-. d-. d-. d-. d-.
        a-.->\< a-. a-. a-. a-. a-. g-. g-. g-. g-. g-. g-. e-.\f
      }
    }
  }
}

scoreAEflatClarinet = \relative c'' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  R2.*7 fs'16\p\<(b, cs a b g a e fs b, cs ds e4.\mf) r4. R2.*7 \mark\default R2.
  fs,16\mf( b cs fs e fs cs' b cs fs e fs) R2.*2 {fs,16\mp-> ( b, cs a b8-.) fs'16->( b, cs a b8-.)}
  R2. {b'16->\mf ( e, fs d e8-.) b'16->( e, fs d e8-.)} R2. \mark\default R2.
  {cs16 (b cs fs e fs cs' b cs fs e fs)} R2.*3 {cs,16 (b cs fs e fs cs' b cs fs e fs)} R2.
  {fs,8-.\mp\< e-. d-. b-. b-. a-. \mark\default e-.\! r r r4.}
  R2.*13
  \relative c'' {\greenPathPatternA \greenPathPatternB}

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a'8\fp-.-> e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b)
    e-.-> e-. e-. e-.-> e-. e-. d->( c) a( c) b->( g)
    e'-.-> e-. e-. e-.-> e-. e-. g->( f) d( c) c->( b) e-.-> r r4 r R2.
    \time 4/4 R1 \time 3/4 d8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g'->( f e) f->( e d) d-.->\f r r4 r
    \mark\default a4.\mf e'->~2. g4-> f d e-> c b a4.-> d c b

    \alternative {
      \volta 1 {
        f8 r g r a r b r c r d r \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a\p r a r a r a r a r a r a\< r b r c r d r e r g r a4.\f d c b a8-> r r4 r R2.
        a4. d c b a8 r r4 r R2. a4.\p\< d c b R2.*2\! cs4.\mf\< fs e ds
        a8-.->\fp\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-.
        \repeat unfold 2 {a8\fp r r e r4 g8 r r4 c,8 r bf'\< r r bf r4 bf8 r r bf r4}
        a8->\fp r r4 r R2.*5
        f8 e->( d) e->( d c) e->( d c) b->( a gs) a r r a r4 a-.\< b-. a-. a16\f(b c8--) r a\p r4 a-. a-. a-.
        a8 r r a r4 a-.\< b-. a-. a16\f( c d8--) r a\p r4 a16\f( d e8--) r4 r
      }
      \volta 2 {
        f,8 r g r a r b r c r d r \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        e4.\mf e->~2. g4-> f d e-> c b a4. d c b
        f16\p
      }
    }
  }
}

scoreAClarinetI = \relative c'' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*10 r2 r4 r8 b\mp cs2\< e e1\! R1 fs,2\> d e1
  \mark \default R1*15\!
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  R2.*7 r4. a'16\p\<(e fs b, cs ds e4.\mf~8 fs8 g fs2.) e4.~8 b4( cs2.) d4.~8 b4(a4.~8 b8 c b4.)~8 g4(a2.)
  \mark\default b8-.\pp r r b-. r r fs'-. r r fs-. r r e-. r r e-. r r c-. r r c-. r r
  b-. r r b-. r r cs-. r r cs-. r r e-. r r b-. r r cs-. r b-. fs'-. r r
  \mark\default c-. r r c-. r r b-. r r b-. r r e-. r r e-. r r c-. r r c-. r r
  b-. r r b-. r r fs'-. r r fs-. r r e-. r r e-. r r b-. r r b-. r r \mark\default R2.*14

  \greenPathPatternA \greenPathPatternB

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a8\fp-.-> e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b)
    e-.-> e-. e-. e-.-> e-. e-. d->( c) a( c) b->( g)
    e'-.-> e-. e-. e-.-> e-. e-. g->( f) d( e) c-> (b) e->-. r r4 r R2.
    \time 4/4 R1 \time 3/4
    d8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g->( f e) f->( e d)
    \tuplet 3/2 {d'-.->\f c-. bf-.} \tuplet 3/2 {bf-.-> a-. g-.} \tuplet 3/2 {f-.-> e-. d-.}
    \mark\default a'4-.-> r r R2.*5

    \alternative {
      \volta 1 {
        f16\mp\<( g a b g8-.) r a16( b c d b8-.) r c16( d e f d8-.) r
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a16\fp( e f gs a8-.) r a16( e f gs a8-.) r a16( e f gs a8-.) r
        a16\<( f gs a b8-.) r c16( a b c d8-.) r e16( d e f g8-.) r
        a4.\f d, c b a8-> r r4 r R2. a'4. d, c b a8-> r r4 r R2.*3
        b4.\mp\< e d b cs4. fs e ds a8->-.\fp\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-.
        a'-.->\fp e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b) e->\< e e e-> e e e-> e e e-> e e
        a-.->\fp e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b) e->\< e e e-> e e e-> e e e-> e e
        a,\fp c->( b a b c) a c->( b a b c) d c->( b) c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) f e->( d) e->( d c) e->( d c) b->( a gs)
        a c->( b a b c) a c->( b a b c) d-> r r c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) d-> r r4 r e8-> r r4 r
      }
      \volta 2 {
        f,16\mp\<( g a b g8-.) r a16( b c d b8-.) r c16( d e f d8-.) r
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a'4.\mf e->~2. g4-> f d e-> c b a4. d c b
        f16\p
      }
    }
  }
}

scoreAClarinetII = \relative c'' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  R2.*16 \mark\default
  b8-.\pp r b-. g-. b-. r b-. r b-. r b-. e,-. b'-. r b-. e-. b-. r b-. r b-. g-. b-. e-.
  b-. r b-. g-. b-. r b-. r b-. r b-. g'-. b,-. r b-. e,-. b'-. r b-. r b-. b-. r r
  \mark\default b-. r b-. g-. b-. r b-. r a-. r b-. r b-. r b-. e-. b-. r a-. r a-. g-. b-. e-.
  b-. r b-. g-. b-. r b-. r a-. r b-. r b-. r b-. e,-. b'-. r b-.\< r b-. g-. b-. e-.
  \mark\default e-.\! r r r4. R2.*13

  \relative c' {\greenPathPatternA  \greenPathPatternB}

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a8\fp r r e r4 g8 r r4 c,8 r e r r e r4 d8 r r4 b8 r b r r e r4 g8 r r4 c,8 r
    e r r4 r R2. \time 4/4 R1 \time 3/4
    d8\mf\<(-> c b) c(-> b a) d(-> c b) c(-> b a) g(-> f e) f(-> e d)
    d'4-.\f bf-. f-. \mark\default e8-.\p e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-.
    e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-.
    c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-.
    \alternative {
      \volta 1 {
        r4 g'16\mp\<( a b c a8-.) r b16( c d e c8-.) r d16( e f g
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        e8-.\fp) r a,16( e f gs a8-.) r a16( e f gs a8-.) r a16( e f gs a8-.\<) r
        b16( gs a b c8-.) r d16( b c d e8-.) r g16( e f g)


        a4.\f d, c b a8-> r r4 r R2. a'4. d, c b a8-> r r4 r R2.*3
        b4.\mp\< e d b cs4. fs e ds e2.\fp\<~2.
        a,8\fp r r e r4 g8 r r4 c8( b) bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-.
        a8\fp r r e r4 g8 r r4 c8( b) bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-.
        a8->\fp r r4 r R2.*5
        d8 c->( b) c->( b a) c->( b a) g->( f e) a r r a r4 a-.\< b-. a-. a16\f(b c8--) r a\p r4 a-. a-. a-.
        a8 r r a r4 a-.\< b-. a-. a16\f( c d8--) r a\p r4 a16\f( d e8--) r4 r
      }
      \volta 2 {
        r4 g,16\mp\<( a b c a8-.) r b16( c d e c8-.) r d16( e f g)
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4.\mf e->~2. g4-> f d e-> c b a4. d c b
        r4
      }
    }
  }
}

scoreAClarinetIII = \relative c'' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  R2.*16 \mark\default
  e,8-.\pp r e-. g-. e-. r fs-. r fs-. r fs-. e-.
  e-. r e-. e-. e-. r fs-. r fs-. g-. b-. e-.
  e,-. r e-. g-. e-. r fs-. r fs-. r fs-. g-.
  e-. r e-. e-. e-. r fs-. r fs-. b-. r r
  \mark\default
  e,-. r e-. g-. e-. r fs-. r fs-. r fs-. r
  e-. r e-. e-. e-. r fs-. r fs-. g-. b-. e-.
  e,-. r e-. g-. e-. r fs-. r fs-. r fs-. r
  e-. r e-. e-. e-. r e-.\< r fs-. g-. b-. e-. \mark\default e-.\! r r r4. R2.*13

  \relative c {\greenPathPatternA  \greenPathPatternB}

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a,8\fp r r e r4 g8 r r4 c8->( b) e, r r e r4 d8 r r4 b'8 r a r r e r4 g8 r r4 c8->( b)
    e r r4 r R2. \time 4/4 R1 \time 3/4
    d8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g->( f e) f->( e d)
    d'4-.\f bf-. f-.
    \mark\default e8-.\p e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-.
    e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-.
    c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-.

    \alternative {
      \volta 1 {
        r4 g'16\mp\<( a b c a8-.) r b16( c d e c8-.) r d16( e f g
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        e8-.\fp) r a,16( e f gs a8-.) r a16( e f gs a8-.) r a16( e f gs a8-.\<) r
        b16( gs a b c8-.) r d16( b c d e8-.) r g16( e f g)


        a4.\f d, c b a8-> r r4 r R2. a'4. d, c b a8-> r r4 r R2.*3
        b,4.\mp\< e d b cs4. fs e ds e2.\fp\<~2.
        a8\fp r r e r4 g8 r r4 c,8( b) bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-.
        a'8\fp r r e r4 g8 r r4 c,8( b) bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-.
        a8->\fp r r4 r R2.*5
        d8 c->( b) c->( b a) c->( b a) g->( f e) a r r a r4 a-.\< b-. a-. a16\f(b c8--) r a\p r4 a-. a-. a-.
        a8 r r a r4 a-.\< b-. a-. a16\f( c d8--) r a\p r4 a16\f( d e8--) r4 r
      }
      \volta 2 {
        r4 g16\mp\<( a b c a8-.) r b16( c d e c8-.) r d16( e f g)
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4.\mf e->~2. g4-> f d e-> c b a4. d c b
        r4
      }
    }
  }
}

scoreABassClarinet = \relative c'' {
  \global
  \transposition c,
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  R2.*16 \mark\default b,8-.\pp r r b-. r r fs'-. r r fs-. r r
  e-. r r e-. r r c-. r r c-. r r
  b-. r r b-. r r cs-. r r cs-. r r
  e-. r r b-. r r cs-. r r fs-. r r

  \mark\default \greenPathBassA \mark\default \greenPathBassPreB \greenPathBassB

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a8\fp-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-.
    a-.-> a-. a-. a-.-> a-. a-. f-.-> f-. f-. f-. g-.-> r
    a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-.
    a-.->\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-. g-.-> g-.
    \time 4/4 f-.-> f-. f-. f-. f-.-> f-. f-. f-. \time 3/4
    d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. bf-.-> bf-. bf-. bf-.-> bf-. bf-. bf2.\f\>
    \mark\default e8-.\p e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-.
    e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-.
    c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-.

    \alternative {
      \volta 1 {
        a-.\< a-. a-. a-. a-. a-. b-. b-. b-. b-. b-. b-.
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a-.\f r r4 r r8 e''16 e e4 c a\< a8 b~8 b c->( b) e->( f) g->( af)
        a?->-.\fp\< a,-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-. e-.->\f r r4 r R2.
        a8->-.\fp\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-. e-.->\f r r4 r R2.
        fs8-.->\< fs-. fs-. fs-.-> fs-. fs-. f?-.-> f-. f-. f-.-> f-. f-.
        gs-.-> gs-. gs-. gs-.-> gs-. gs-. g?-.-> g-. g-. g-.-> g-. g-.
        bf-.-> bf-. bf-. bf-.-> bf-. bf-. a-.-> a-. a-. a-.-> a-. a-.
        f-.->\fp\< f-. f-. f-.-> f-. f-. f-.-> f-. f-. f-.-> f-. f-.
        a-.->\fp a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. bf4.\< bf4. bf4.\f\> bf4.
        a8-.->\p a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. bf4.\< bf4. bf4.\f\> bf4.
        a8-.->\p a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-.
        a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-.
        a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-.
        a-. a-. a-. a-. a-. a-. b-.-> b-. a-.-> a-. g-.-> g-.
        f-.-> f-. r f-. f-. f-. f-. f-. r f-. f-. f-.
        f-. f-. r f-. f-. f-. f-. f-. r f-. d-.\< d-.
        d2\f\> e8-.\p\< e-. e2\f d8-.\> d-. a'-.\p\< a-. b-. b-. c-. c-. b-. b-. c-. c-. d-. d-.
      }
      \volta 2 {

        a,-.\< a-. a-. a-. a-. a-. b-. b-. b-. b-. b-. b-.
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a-.->\mf a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-. a-.
        ef'-.-> ef-. ef-. ef-.-> ef-. ef-. d-.-> d-. d-. d-. d-. d-.
        a'-.->\< a-. a-. a-. a-. a-. g-. g-. g-. g-. g-. g-. e-.\f
      }
    }
  }
}

scoreAAltoSaxI = \relative c'' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*8
  { a,1\pp~ 2 \tuplet 3/2 {a4( b cs)} a1~ 1 c d a~1 \mark\default R1*15}
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4
  \mark\default fs'2.\mf^\markup{ \italic "solo" }~4.
  \tuplet 2/3 {g8(a)} fs2 b,4 cs2. e~4. \tuplet 2/3 {fs8(g)} e2.~2.
  fs2.~4. \tuplet 2/3 {g8(a)} fs2 b,4( cs2.) e~4. \tuplet 2/3 {fs8(g)} e2. c4. a(

  \time 6/8 \mark\default
  b2.\>) R2.*15\!
  {
    \mark\default b'8-.\pp r b-. b-. b-. r b-. r b-. b-. b (e-.)
    b-. r b-. e,-. b'-. r b-. r b-. c-. b-. e-.
    b-. r b-. g-. b-. r cs-. r cs-. cs,-. fs-. g-.
    b-. r b-. e,-. b'-. r cs-. r b-. fs-. r r
  }
  {
    \mark\default b-. r b-. g-. b-. r b-. r a-. r b-. r
    b-. r b-. e,-. b'-. r a-. r a-. g-. b-. e-.
    b-. r b-. g-. b-. r a-. r a-. r b-. r
    b-. r b-. e,-. b'-. r b-.\< r b-. g-. b-. e-. \mark\default e-.\! r r r4.
  }
  R2.*13
  {
    r4. r8 g,4\ff a4. c \mark\default b2.~4.~8 e4 b2. e d4. cs d b
    \override TextSpanner.bound-details.left.text = "poco rit." a2.\startTextSpan a4. c\stopTextSpan
  }

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    e,8\fp-.-> e-. e-. e-.-> e-. e-. g-.-> r r4 r e8-.-> e-. e-. e-.-> e-. e-. d-.-> r r4 r
    e8-.-> e-. e-. e-.-> e-. e-. g-.-> r r4 r e8 r r4 r R2. \time 4/4 R1 \time 3/4
    d8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g->( f e) f->( e d)
    \tuplet 3/2 {d'-.->\f c-. bf-.} \tuplet 3/2 {bf-.-> a-. g-.} \tuplet 3/2 {f'-.-> e-. d-.}
    \mark\default a4-.-> r r R2.*5

    \alternative {
      \volta 1 {
        r4 g16\mp\<( a b c a8-.) r b16( c d e c8-.) r d16( e f g
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        e8-.\fp) r a,16( e f gs a8-.) r a16( e f gs a8-.) r a16( e f gs a8-.\<) r
        b16( gs a b c8-.) r d16( b c d e8-.) r g16( e f g)
        a4.\f d c b a8-> r r4 r R2. a4. d c b a8-> r r4 r R2.
        a,4.\p\< d c b b e d b cs fs e ds
        a8-.->\fp\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-.
        a'\fp-.-> e-. e-. e-.-> e-. e-. g-.-> r r4 r
        e8\<-> e e e-> e e e-> e e e-> e e
        a8\fp-.-> e-. e-. e-.-> e-. e-. g-.-> r r4 r
        e8\<-> e e e-> e e e-> e e e-> e e
        a,\fp c->( b a b c) a c->( b a b c) d c->( b) c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) f e->( d) e->( d c) e->( d c) b->( a gs)
        a c->( b a b c) a c->( b a b c) d-> r r c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) d-> r r4 r e8-> r r4 r
      }
      \volta 2 {
        r4 g,16\mp\<( a b c a8-.) r b16( c d e c8-.) r d16( e f g)
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4.\mf e->~2. g4-> f d e-> c b a4. d c b
        r4
      }
    }
  }
}

scoreAAltoSaxII = \relative c'' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  {
    R2.*16 \mark\default e,8-.\pp r e-. r e-. r fs-. r fs-. fs-. b (e-.)
    e,-. r e-. e-. b'-. r c,-. r c-. c-. b-. e-.
    e-. r e-. g-. e-. r fs-. r fs-. cs-. fs-. g-.
    e-. r e-. e-. b'-. r fs-. r fs-. fs-. r r
  }
  {
    \mark\default e-. r e-. g-. e-. r fs-. r fs-. r fs-. r
    e-. r e-. e-. e-. r fs-. r fs-. g-. b-. e-.
    e,-. r e-. g-. e-. r fs-. r fs-. r fs-. r
    e-. r e-. e-. e-. r e-.\< r fs-. g-. b-. e-. \mark\default e-.\! r r r4. R2.*15
  }
  \mark\default fs,2.\ff~4. \tuplet 2/3 {g8 a} fs4.~8 b,4 cs2. e2.~4. \tuplet 2/3 {fs8 g}
  \override TextSpanner.bound-details.left.text = "poco rit." e2.\startTextSpan\< c4. a\stopTextSpan

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    e'8\fp-.-> e-. e-. e-.-> e-. e-. g-.-> r r4 r e8-.-> e-. e-. e-.-> e-. e-. d-.-> r r4 r
    e8-.-> e-. e-. e-.-> e-. e-. g-.-> r r4 r e8 r r4 r R2. \time 4/4 R1 \time 3/4
    d8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g->( f e) f->( e d)
    bf'2.\> \mark\default a4\p-.-> r r R2.*5

    \alternative {
      \volta 1 {
        f16\mp\<( g a b g8-.) r a16( b c d b8-.) r c16( d e f d8-.) r
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a16\fp( e f gs a8-.) r a16( e f gs a8-.) r a16( e f gs a8-.) r
        a16\<( f gs a b8-.) r c16( a b c d8-.) r e16( d e f g8-.) r
        a4.\f d c b a8-> r r4 r R2. a4. d c b a8-> r r4 r R2.
        a,4.\p\< d c b b e d b cs fs e ds
        a8-.->\fp\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-.
        a'\fp-.-> e-. e-. e-.-> e-. e-. g-.-> r r4 r
        e8\<-> e e e-> e e e-> e e e-> e e
        a8\fp-.-> e-. e-. e-.-> e-. e-. g-.-> r r4 r
        e8\<-> e e e-> e e e-> e e e-> e e
        a,\fp c->( b a b c) a c->( b a b c) d c->( b) c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) f e->( d) e->( d c) e->( d c) b->( a gs)
        a c->( b a b c) a c->( b a b c) d-> r r c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) d-> r r4 r e8-> r r4 r
      }
      \volta 2 {
        f,16\mp\<( g a b g8-.) r a16( b c d b8-.) r c16( d e f d8-.) r
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a'4.\mf e->~2. g4-> f d e-> c b a4. d c b
        f16\p
      }
    }
  }
}

scoreATenorSax = \relative c'' {
  \global
  \transposition c,
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  R2.*16 \mark\default e,4.\mp e e e e e fs g e e e e e e fs\< g \mark\default
  \relative c' \greenPathBassA \mark\default \relative c'' {\greenPathBassPreB \greenPathBassB}

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a8\fp r r e r4 g8 r r4 c8->( b) e, r r e r4 d8 r r4 b'8 r a r r e r4 g8 r r4 c8->( b)
    a-.->\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-. g-.-> g-.
    \time 4/4 f-.-> f-. f-. f-. f-.-> f-. f-. f-. \time 3/4
    d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-.
    g->( f e) f->( e d) bf'2.\> \mark\default e4\p-.-> r r
    g8->\mf f d e c-> b c-> r r4 r R2.*2 e8->\mf d b c a-> b

    \alternative {
      \volta 1 {
        a-> r r4 r R2. \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4.\f e'->~2. g4->\< f d e c b
        a8-.->\fp\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-. e-.->\f r r4 r R2.
        a8-.->\fp\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-. e-.->\f r r4 r R2.*3
        b4.\mp\< e d b cs4. fs e ds e2.\fp\<~2. a8\fp r r e r4 g8 r r4 c8( b) bf2.\<~2.\f\>
        a8\p r r e r4 g8 r r4 c8( b) bf2.\<~2.\f\> a8-.->\p r r4 r R2.*5
        d8 c->( b) c->( b a) c->( b a) g->( f e) e r r a r4 a-.\< b-. a-. a16\f(b c8--) r a\p r4 a-. a-. a-.
        a8 r r a r4 a-.\< b-. a-. a16\f( c d8--) r a\p r4 a16\f( d e8--) r4 r
      }
      \volta 2 {
        a8-> r r4 r R2.*2 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        g8-.->\mf f-. d-. e-. c-.-> b-. g4-> f d e-> c b a4. d c b a8->
      }
    }
  }
}

scoreABaritoneSax = \relative c'' {
  \global
  \transposition c,
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  R2.*8 e,2.\p b'4 cs8~4. c?4. e~2. d4. fs, a b4 c8 e4. b a2.
  \mark\default R2.*7

  fs4.\p\< g \mark\default \relative c' \greenPathBassA
  \mark\default \relative c'' {\greenPathBassPreB \greenPathBassB}

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  {a'8\fp-.->}
}

scoreATrumpetBbI = \relative c'' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  R2.*16 \mark\default R2.*8 \mark\default R2.*8
  {
    \mark\default e16\f-. b-. a-. e'-. r e8-. e16-. r e8.-. e16-. b-. a-. e'-. r fs8-. fs16-. r fs8.-.
    e16-. b-. a-. e'-. r e8-. e16-. r e8.-. e16-. b-. a-. e'-. r e8-. e16-. r d8.-.
  }
  {
    e16-. b-. a-. b-. a-. g-. b8-. r r e16-. b-. a-. b-. a-. g-. e'8-. r r
    e16-. b-. a-. b-. a-. g-. e8-. r r e8.\< fs g a
  }
  {
    fs2.\ff~4. \tuplet 2/3 {g8 a} fs4.~8 b,4 cs2. e~4. \tuplet 2/3 {fs8 g} e4.~8 g4 a4. c
    \mark\default b2.~4.~8 e,4 b2. e d4. cs d b \override TextSpanner.bound-details.left.text = "poco rit."
    a2.\startTextSpan \< a4. c\stopTextSpan
  }

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  {a'8\fp-.->}
}

scoreATrumpetBbII = \relative c'' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  R2.*16 \mark\default  R2.*8 \mark\default R2.*8
  {
    \mark\default e16\f-. b-. a-. e'-. r e8-. e16-. r e8.-. e16-. b-. a-. e'-. r fs8-. fs16-. r fs8.-.
    e16-. b-. a-. e'-. r e8-. e16-. r e8.-. e16-. b-. a-. e'-. r e8-. e16-. r d8.-.
  }
  {
    e16-. b-. a-. b-. a-. g-. b8-. r r e16-. b-. a-. b-. a-. g-. e'8-. r r
    e16-. b-. a-. b-. a-. g-. e8-. r r
    e'16-.\<^\markup{\italic "stagger breathing"}
    b-. a-. e'-. b-. a-. e'-. b-. a-. e'-. b-. a-.
  }
  {
    e'->\ff c-. b-. c-. b-. a-. b-. a-. g-. a-. g-. e-.
    e'-. c-. b-. c-. b-. a-. b-. a-. g-. a-. g-. e-.
    e'-. c-. b-. c-. b-. a-. b-. a-. g-. a-. g-. e-.
    e'-. cs-. b-. cs-. b-. a-. b-. a-. g-. a-. g-. e-.
    e'-. cs-. b-. cs-. b-. a-. b-. a-. g-. a-. g-. e-.
    e'-. c-. b-. c-. b-. a-. b-. a-. g-. a-. g-. e-.
  }
  \relative c' {\greenPathPatternA \greenPathPatternB}

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  {a8\fp-.->}
}

scoreAHornFI = \relative c' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  e1\pp \> \laissezVibrer R1*8\! \mark \default R1*16 \mark\default R1*8
  e1\p\<~1 f1~1 e1\f\> R1*2\!
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*8 b2.~2. e2.~2. b g e~2.

  \time 6/8 \mark\default
  R2.*16
  \mark\default  R2.*8 \mark\default \relative c'{\greenPathBassA} \mark\default R2.*7
  e'8.\< fs g a fs2.\ff~4. \tuplet 2/3 {g8 a} fs4.~8 b,4 cs2. e~4. \tuplet 2/3 {fs8 g} e4.~8 g4 a4. c
  \mark\default b2.~4.~8 e4 b2. e d4. cs d b \override TextSpanner.bound-details.left.text = "poco rit."
  a2.\startTextSpan \< a4. c\stopTextSpan

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  {a8\fp-.->}
}

scoreAHornFII = \relative c' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  e,1\pp \> \laissezVibrer R1*8\! \mark \default R1*16 \mark\default R1*8
  e1\p\<~1 f1~1 e1\f\> R1*2\!
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  \transpose c c' {
    \fixed c {
      e,8\p-.^\markup{\italic "quasi pizz."} b,-. e-. r4. b,,8-. fs,-. cs-. r4. c,8-. g,-. d-. r4. a,,8-. e,-. b,-. r4.
      b,,8-. fs,-. cs-. r4. g,,8-. d,-. a,-. r4. a,,8-. e,-. b,-. r4. c,8-. g,-. e-. r4.
    } \greenPathLeftHandB
  }
  \mark\default R2.*8 \mark\default R2.*8\! \mark\default R2.*7
  e8.\f\< fs g a fs2.\ff~4. \tuplet 2/3 {g8 a} fs4.~8 b,4 cs2. e~4. \tuplet 2/3 {fs8 g} e4.~8 g4 a4. c
  \relative c' {
    \override TextSpanner.bound-details.left.text = "poco rit."
    {\mark\default fs8-. fs16-. fs-. r fs-. fs8-. fs-. fs-.} {fs8-. fs16-. fs-. r fs-. fs8-. fs16-. fs-. fs8-.}
    {fs8-. fs16-. fs-. r fs-. fs8-. fs-. fs-.} {fs8-. fs16-. fs-. r fs-. fs8-. fs16-. fs-. fs8-.}
    {fs8-. fs16-. fs-. r fs-. fs8-. fs-. fs-.} {fs8-. fs16-. fs-. r fs-. fs8-. fs16-. fs-. fs8-.}
    {fs8-.\startTextSpan fs16-. fs-. r fs-. fs8-. fs-. fs-.} {fs8-. fs16-. fs-. r fs-. fs8.-. fs16-. fs-. fs-.\stopTextSpan}
  }

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  {a8\fp-.->}
}

scoreATromboneI = \relative c {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*8
  f1\p\< g f bf g\f\> R1*2\!
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  R2.*16 \mark\default R2.*7
  {e,16\f-. fs-. b-. fs-. b-. cs-. cs-. cs-. e-. cs-. e-. fs-.} \mark\default g8-. r8 r2
  R2.*7 \mark\default
  \relative c' {\greenPathBassPreB \greenPathBassB}

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  {a8\fp-.->}
}

scoreATromboneII = \relative c {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*8 e1\p\<~1 f1~1 e1\f\> R1*2\!
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  R2.*16 \mark\default  R2.*8 \mark\default R2.*8 \mark\default R2.*8 \relative c' {\greenPathBassC}

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  {a'8\fp-.->}
}

scoreAEuphonium = \relative c {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 {
    \mark \default
    d'1\pp~ 2 \tuplet 3/2 {d4( e fs)} d2. b4( g1~) 1\< a2. cs4\!( f1) g\>
    d\!~2 \tuplet 3/2 {d4( e fs)} d2. b4( fs1) g d g2 b cs1 \mark\default R1*8
    a2\mf\< \tuplet 3/2 {a4( b c} b1) c2 \tuplet 3/2 {c4( d e} d1) e\f\> R1*2\!
  }
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  \transpose c c' {
    \fixed c {
      e,8\p-.^\markup{\italic "quasi pizz."} b,-. e-. r4. b,,8-. fs,-. cs-. r4. c,8-. g,-. d-. r4. a,,8-. e,-. b,-. r4.
      b,,8-. fs,-. cs-. r4. g,,8-. d,-. a,-. r4. a,,8-. e,-. b,-. r4. c,8-. g,-. e-. r4.
    } \greenPathLeftHandB
  }
  \mark\default R2.*7
  {e,,16\f-. fs-. b-. fs-. b-. cs-. cs-. cs-. e-. cs-. e-. fs-.}
  \mark\default \greenPathBassA \mark\default
  {e,8-.\f e16-. e-. r e-. e8-. e-. e-.} {b8-. b16-. b-. r b-. b8-. b16-. b-. b8-.}
  {c8-. c16-. c-. r c-. c8-. c-. c-.} {a8-. a16-. a-. r a-. a8-. a16-. a-. a8-.}
  {b8-. b16-. b-. r b-. b8-. b-. b-.} {g8-. g16-. g-. r g-. g8-. g-. g-.}
  {a8-. a16-. a-. r a-. a8-. a-. a-.} e'8.\f\< fs g a
  fs2.\ff~4. \tuplet 2/3 {g8 a} fs4.~8 b,4 cs2. e~4. \tuplet 2/3 {fs8 g} e4.~8 g4 a4. c
  \mark\default b2.~4.~8 e4 b2. e d4. cs d b \override TextSpanner.bound-details.left.text = "poco rit."
  a2.\startTextSpan \< a4. c\stopTextSpan

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  {a8\fp-.->}
}

scoreATuba = \relative c {
  \global
  \transposition c,
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  e,8-.^\markup{ \italic "quasi pizz."} r r e-. r r b-. r r b-. r r c-. r r c-. r r a-. r r a-. r r b-.
  r r b-. r r g-. r r g-. r r a-. r r a-. r r c-. r r c-. r r R2.*8

  \mark\default e4.\mp e e e e e fs g
  e e e e e e fs\< g \mark\default
  \relative c {\greenPathBassA} \mark\default
  \relative c {\greenPathBassPreB \greenPathBassB}

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  {a'8\fp-.->}
}

scoreATimpani = \relative c {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  \repeat percent 8 {e1:32(} e1) \mark \default \repeat percent 15 {e1:32(} e1)
  \mark \default \repeat percent 12 {e1:32(} e1)R1*2

  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  R2.*16 \mark\default
  e4.\mp e e e e e b b e e e e e e b\< b
  \mark\default c\! c a a e' e a, a a a e' e c c c\< e
  \mark\default e8.\f e e8 e e b8. b b8 b b c8. c c8 c c a8. a a8 a a
  b8. b b8 b b b8. b b8 b b a8.\< a a8 a16 a a8 c8. c c8 c16 c c8
  e8.\ff e e8 e e b8. b b8 b b c8. c c8 c c a8. a a8 a a
  b8. b b8 b b b8. b b8 b b a8. a a8 a a c8. c c8 c c
  \mark\default e8. e e8 e e b8. b b8 b b c8. c c8 c c a8. a a8 a a
  b8. b b8 b b b8. b b8 b b \override TextSpanner.bound-details.left.text = "poco rit."
  a8.\startTextSpan a a8 a a c8. c c c16 c c\stopTextSpan

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  {a8\fp-.->}
}

scoreAGlockenspiel = \relative c'' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default
  {e8\pp b e2 b8 fs cs'2 c8 g d'2 a8 e b'2 b8 fs cs'2 g8 d a'2 a8 e b'2 c8 g e'2}
  {e8 b e2 b8 fs cs'2 c8 g d'2 a8 e b'2 b8 fs cs'2 g8 d a'2 a8 e b'2 c8 g e'2}

  \time 6/8 \mark\default
  R2. {fs16->\p^\markup {\italic "solo" } (b, cs a b8-.) fs'16->(b, cs a b8-.)}
  R2. {b'16->(e, fs d e8-.) b'16->(e, fs d e8-.)}
  R2.*3 {fs16\<->( b, cs a b g a e fs b, cs ds e2.\mf)} R2.*7
  {\mark\default fs'16->\mp ( b, cs a b8-.) fs'16->( b, cs a b8-.)} R2.
  {b'16->(e, fs d e8-.) b'16->(e, fs d e8-.)} R2.
  {fs16-> ( b, cs a b8-.) fs'16->( b, cs a b8-.)} R2.
  {b'16->(e, fs d e8-.) b'16->(e, fs d e8-.)} R2.
  \mark\default
  {fs16->\mf ( b, cs a b8-.) fs'16->( b, cs a b8-.)} R2.
  {b'16->(e, fs d e8-.) b'16->(e, fs d e8-.)} R2.
  {fs16-> ( b, cs a b8-.) fs'16->( b, cs a b8-.)} R2.
  {b'16->(e, fs d e8-.) b'16->(e, fs d e8-.)} R2. \mark\default R2.*16 \mark\default R2.*8

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  {e8\fp-.->}
}

scoreAXylo = \relative c' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default
  \fixed c'' {e,8^"Vibraphone"\mf b, e4 r4 b,,8 fs, cs4 r4
      c,8 g, d4 r4 a,,8 e, b,4 r4
      b,,8 fs, cs4 r4 g,,8 d, a,4 r4 a,,8 e, b,4 r4 c,8 g, e4 r4
      e,8 b, e4 r4 b,,8 fs, cs4 r4
      c,8 g, d4 r4 a,,8 e, b,4 r4
      b,,8 fs, cs4 r4 g,,8 d, a,4 r4 a,,8 e, b,4 r4 c,8 g, e4 r4}

  \time 6/8 \mark\default
  { e2.^"Tub. Bells"\mp b c a b g a c } { e2. b c a b g a c^"To Xyl." } \mark\default R2.
  fs,16^"Xylophone"\mf (b cs fs e fs cs' b cs fs e fs) R2.*3 %a,,8 e' b' fs' b, e, a, r r r4.
  fs,,16 (b cs fs e fs cs' b cs fs e fs) R2. e,16 (fs b fs b cs fs, b cs b cs fs) \mark\default R2.
  fs,,16 (b cs fs e fs cs' b cs fs e fs) R2.*3 fs,,16 (b cs fs e fs cs' b cs fs e fs)
  R2.*2 \mark\default R2.*16 \mark\default R2.*8

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  {a,8\fp-.->}
}

scoreADrum = \drummode {
  \global
  % Drums follow here.
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*10
  cymc1:32^"Susp. cymbal"\p\<\laissezVibrer R1*3\! bd1^"Bass drum"\p\laissezVibrer

  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  R2.*16 \mark\default R2.*8 \mark\default R2.*8
  \mark\default
  << {tamb8->^"Tambourine" tamb16 tamb-> r tamb tamb8-> tamb tamb} \\ {tomfh4_"Toms" tomfh tomfh 8 tomfl} >>
  <<
    {\repeat unfold 15 {tamb8-> tamb16 tamb-> r tamb tamb8-> tamb tamb}} \\
    {\repeat unfold 15 {tomfh4 tomfh tomfh 8 tomfl}}
  >>
  \mark\default
  <<
    {\repeat unfold 6 {tamb8-> tamb16 tamb-> r tamb tamb8-> tamb tamb}} \\
    {\repeat unfold 6 {tomfh4 tomfh tomfh 8 tomfl}}
  >>
  <<
    {
      \override TextSpanner.bound-details.left.text = "poco rit."
      tamb8->\startTextSpan tamb16 tamb-> r tamb tamb8-> tamb tamb
      tamb8-> tamb16 tamb-> r tamb tamb8-> tamb tamb \stopTextSpan
    } \\ {tomfh4 tomfh tomfh 8 tomfl tomfh4 tomfh tomfh 8 tomfl}
  >>

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4
  {sn8\fp-.->}
}

scoreARight = \relative c' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1 {fs1\mp\(~ 2 \tuplet 3/2 {fs4 g a} fs2.. b,8 cs1\) fs\(~ 2 \tuplet 3/2 {fs4 g a} e2.. g16 fs g1\)}
  {\mark \default fs'1\(~ 2 \tuplet 3/2 {fs4 g a} fs2. b,4 cs1\) e\(fs2 g4 a b2.. c8 b2 g\)}
  {fs,16( fs'8 fs16 fs'4) r8. fs16( fs,8 fs,~) 2 \tuplet 3/2 {fs4( g a} fs16 fs'8 fs16 fs'4~) fs4.	 b,8( cs2 e e1)}
  {fs,,2( \tuplet 3/2 {fs4 g a} fs2 d e1)}
  {\mark\default R1 r2 \tuplet 3/2 {fs4( g a} fs1 g2.) a4( b1-^\sfz~ 2 \tuplet 3/2 {b4 c d} b2 cs d1)}
  {e~ 2 e,(<a c,> \tuplet 3/2 {<a c,>4 <b d,> <c e,>} <bf d,>1 <e e,>) fs,8\>( g a b e fs g b e1\p)}

  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  \repeat unfold 2 {\greenPathRightHand} \mark\default
  \repeat unfold 3 {\greenPathRightHand} \greenPathRightHandB
  \repeat unfold 3 {\greenPathRightHand} \greenPathRightHandB

  \time 6/8 \mark\default
  \repeat unfold 3 {\greenPathRightHand} \greenPathRightHandB
  \repeat unfold 3 {\greenPathRightHand} {
    fs,8( b,16 e fs8 b,16 e fs8 b,16 e fs8)
    r r a,,32^\markup {\italic "legato quasi gliss."}\mf
    (b cs d e fs g a b cs d e \mark\default
    fs4.) r
  }
  R2.*2 {a,,32(b cs d e fs g a b cs d e fs e d cs b a g fs e d cs b a8) r r r4.}
  R2.*2 {
    \clef bass fs,32 (g a b c d e fs e fs g a
    \clef treble b c d e d e fs g a b c d \mark\default fs4.) r
  }
  d,8 r a' r b r {b'16->(e, fs d e8-.) b'16->(e, fs d e8-.)}
  {a,,32(b cs d e fs g a b cs d e fs e d cs b a g fs e d cs b a8) r r r4.} R2.
  {b''16->(e, fs d e8-.) b'16->(e, fs d e8-.)} {fs-.( e-. d-.) e-.( b-. a-.)}
  \mark\default
  \repeat unfold 3 {\greenPathRightHand} \greenPathRightHandB
  \repeat unfold 3 {\greenPathRightHand} \greenPathRightHandB

  \greenPathPatternB

  \section \sectionLabel "Hornet" \tempo "Jumpy" 4 = 145 \time 3/4 \key a \minor
  {<a' e a,>8\fp-.->}
}

scoreALeft = \relative c, {
  \global
  % Music goes here
  R1 {e8\sustainOn b' e fs g b g fs e, b' e fs g b g fs}\sustainOff
  {e,\sustainOn b' e fs g b g fs e, b' e fs g b g fs}\sustainOff
  {e,\sustainOn b' e fs g b g fs d, a' e' fs g b g fs}\sustainOff
  {
    \override TextSpanner.bound-details.left.text = "poco rit." c,\sustainOn g' e' fs g b g fs
    c,\startTextSpan g' e' g  c g\sustainOff\stopTextSpan <<{<fs b>4} \\ {<d, a'>}>>
  }
  {e8^\markup{\bold "a tempo"}\sustainOn b' e fs g b g fs e, b' e fs g b g fs}\sustainOff
  {e,8\sustainOn b' e fs g b g fs e, b' e fs g b g fs}\sustainOff
  {c,\sustainOn g' c d e d e g d fs g b g b g fs}\sustainOff
  {f,\sustainOn c' f a c f c a g, d' g b d b4.}\sustainOff
  {e,,8\sustainOn b' e fs g b g fs e, b' e fs g b g fs}\sustainOff
  {e,\sustainOn b' e fs g b g fs e, b' e fs g b g fs}\sustainOff
  {c,\sustainOn g' c d e g e d b, fs' d' fs a4 fs}\sustainOff
  {
    \override TextSpanner.bound-details.left.text = "poco rit."
    g,,8\sustainOn g' d' g b d, g, d a\startTextSpan e' a d->\sustainOff-( cs->\sustainOn) a e a,\stopTextSpan
  }
  {
    e^\markup{\bold "a tempo"}\sustainOn e' g b e g e b c, g' c e g e c g
  }\sustainOff
  {a,\sustainOn a' c e fs e c fs b,, b' e g b e, fs,4->}\sustainOff
  {e8\sustainOn b' e e fs e b g c, g' c e g c g e}\sustainOff
  {a,,\sustainOn e' a cs e a e cs g, d' g b d b g b}\sustainOff
  {f,\sustainOn a a' c f c f a g, d' g a b2}\sustainOff
  {f,8\sustainOn c' f a ~<a c>2 bf,,8\sustainOn f' d' f bf d bf f}\sustainOff
  {
    \override TextSpanner.bound-details.left.text = "rit."
    c,\sustainOn g' c d e\startTextSpan d c e\sustainOff e,\sustainOn
    b' e g b \clef treble e fs g b1\stopTextSpan
  }

  \override MultiMeasureRest.staff-position = 0
  \clef bass
  \override MultiMeasureRest.staff-position = 0
  e,8\sustainOff->^\markup {\musicglyph "pedal.Ped" \italic "ad lib"} e-> e2-> R2. e8-> e-> e2-> R2.
  \greenPathLeftHand \greenPathLeftHand

  \time 6/8
  \greenPathLeftHand \greenPathLeftHand
  e,,4. e e e e e e e e e e e e e fs g c c d d e e a, a a a b b c c c e

  \repeat unfold 3 {\greenPathLeftHandB}

  {<a, a,>4->-.}
}

scoreAPiccoloPart = \new Staff \with {
  instrumentName = "Piccolo"
  shortInstrumentName = "Pic."
  midiInstrument = "piccolo"
} \scoreAPiccolo

scoreAFluteIPart = \new Staff \with {
  instrumentName = "Flute I"
  shortInstrumentName = "Fl. I"
  midiInstrument = "flute"
} \scoreAFluteI

scoreAFluteIIPart = \new Staff \with {
  instrumentName = "Flute II"
  shortInstrumentName = "Fl. II"
  midiInstrument = "flute"
} \scoreAFluteII

scoreAOboePart = \new Staff \with {
  instrumentName = "Oboe"
  shortInstrumentName = "Ob."
  midiInstrument = "oboe"
} \scoreAOboe

scoreABassoonPart = \new Staff \with {
  instrumentName = "Bassoon"
  shortInstrumentName = "Bn."
  midiInstrument = "bassoon"
} { \clef treble \scoreABassoon }

scoreAEflatClarinetPart = \new Staff \with {
  instrumentName = "E-flat clarinet "
  shortInstrumentName = "Cl.Eb."
  midiInstrument = "clarinet"
} \scoreAEflatClarinet

scoreAClarinetIPart = \new Staff \with {
  instrumentName = "Clarinet I"
  shortInstrumentName = "Cl. I"
  midiInstrument = "clarinet"
} \scoreAClarinetI

scoreAClarinetIIPart = \new Staff \with {
  instrumentName = "Clarinet II"
  shortInstrumentName = "Cl. II"
  midiInstrument = "clarinet"
} \scoreAClarinetII

scoreAClarinetIIIPart = \new Staff \with {
  instrumentName = "Clarinet III"
  shortInstrumentName = "Cl. III"
  midiInstrument = "clarinet"
} \scoreAClarinetIII

scoreABassClarinetPart = \new Staff \with {
  instrumentName = "Bass clarinet"
  shortInstrumentName = "BCl."
  midiInstrument = "clarinet"
} \scoreABassClarinet

scoreAAltoSaxIPart = \new Staff \with {
  instrumentName = "Alto Sax I"
  shortInstrumentName = "ASx. I"
  midiInstrument = "alto sax"
} \scoreAAltoSaxI

scoreAAltoSaxIIPart = \new Staff \with {
  instrumentName = "Alto Sax II"
  shortInstrumentName = "ASx. II"
  midiInstrument = "alto sax"
} \scoreAAltoSaxII

scoreATenorSaxPart = \new Staff \with {
  instrumentName = "Tenor Sax"
  shortInstrumentName = "TSx."
  midiInstrument = "tenor sax"
} \scoreATenorSax

scoreABaritoneSaxPart = \new Staff \with {
  instrumentName = "Baritone Sax"
  shortInstrumentName = "BSx."
  midiInstrument = "baritone sax"
} \scoreABaritoneSax

scoreAPianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "Pno."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreARight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreALeft }
>>

scoreATrumpetBbIPart = \new Staff \with {
  instrumentName = "Trumpet in Bb I"
  shortInstrumentName = "Tr.Bb. I"
  midiInstrument = "trumpet"
} \scoreATrumpetBbI

scoreATrumpetBbIIPart = \new Staff \with {
  instrumentName = "Trumpet in Bb II"
  shortInstrumentName = "Tr.Bb. II"
  midiInstrument = "trumpet"
} \scoreATrumpetBbII

scoreAHornFIPart = \new Staff \with {
  instrumentName = "Horn in F I"
  shortInstrumentName = "Hn.F. I"
  midiInstrument = "french horn"
} \scoreAHornFI

scoreAHornFIIPart = \new Staff \with {
  instrumentName = "Horn in F II"
  shortInstrumentName = "Hn.F. II"
  midiInstrument = "french horn"
} \scoreAHornFII

scoreATromboneIPart = \new Staff \with {
  instrumentName = "Trombone I"
  shortInstrumentName = "Trb. I"
  midiInstrument = "trombone"
} { \clef bass \scoreATromboneI }

scoreATromboneIIPart = \new Staff \with {
  instrumentName = "Trombone II"
  shortInstrumentName = "Trb. II"
  midiInstrument = "trombone"
} { \clef bass \scoreATromboneII }

scoreAEuphoniumPart = \new Staff \with {
  instrumentName = "Euphonium"
  shortInstrumentName = "Euph."
  midiInstrument = "trombone"
} { \clef bass \scoreAEuphonium }

scoreATubaPart = \new Staff \with {
  instrumentName = "Tuba"
  shortInstrumentName = "Tb."
  midiInstrument = "tuba"
} { \clef bass \scoreATuba }

scoreATimpaniPart = \new Staff \with {
  instrumentName = "Timpani"
  shortInstrumentName = "Tmp."
  midiInstrument = "timpani"
} { \clef bass \scoreATimpani }

scoreAGlockenspielPart = \new Staff \with {
  instrumentName = "Glockenspiel"
  shortInstrumentName = "Gls."
  midiInstrument = "glockenspiel"
} \scoreAGlockenspiel

scoreAXyloPart = \new Staff \with {
  instrumentName = "Xylophone"
  shortInstrumentName = "Xylo."
  midiInstrument = "xylophone"
} \scoreAXylo

scoreADrumsPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Percussions"
  shortInstrumentName = "Percs."
} \scoreADrum

\book {
  \score {
    <<
      \new StaffGroup <<
        \scoreAPiccoloPart
        \new StaffGroup \with {
          systemStartDelimiter = #'SystemStartSquare
        } <<
          \scoreAFluteIPart
          \scoreAFluteIIPart
        >>
        \scoreAOboePart
        \scoreABassoonPart
      >>
      \new StaffGroup <<
        \transpose ef c
        \scoreAEflatClarinetPart
        \new StaffGroup \with {
          systemStartDelimiter = #'SystemStartSquare
        } <<
          \transpose bf c'
          \scoreAClarinetIPart
          \transpose bf c'
          \scoreAClarinetIIPart
          \transpose bf c'
          \scoreAClarinetIIIPart
        >>
        \transpose bf c'
        \scoreABassClarinetPart
      >>
      \new StaffGroup <<
        \new StaffGroup \with {
          systemStartDelimiter = #'SystemStartSquare
        } <<
          \transpose ef c'
          \scoreAAltoSaxIPart
          \transpose ef c'
          \scoreAAltoSaxIIPart
        >>
        \transpose bf c'
        \scoreATenorSaxPart
        \transpose ef c'
        \scoreABaritoneSaxPart
      >>
      \new StaffGroup <<
        \new StaffGroup \with {
          systemStartDelimiter = #'SystemStartSquare
        } <<
          \transpose bf c'
          \scoreATrumpetBbIPart
          \transpose bf c'
          \scoreATrumpetBbIIPart
        >>
        \new StaffGroup \with {
          systemStartDelimiter = #'SystemStartSquare
        } <<
          \transpose f c'
          \scoreAHornFIPart
          \transpose f c'
          \scoreAHornFIIPart
        >>
        \new StaffGroup \with {
          systemStartDelimiter = #'SystemStartSquare
        } <<
          \scoreATromboneIPart
          \scoreATromboneIIPart
        >>
        \scoreAEuphoniumPart
        \scoreATubaPart
      >>
      \new StaffGroup <<
        \scoreATimpaniPart
        \scoreAGlockenspielPart
        \scoreAXyloPart
        \scoreADrumsPart
      >>
      \scoreAPianoPart
    >>
    \layout {
      #(layout-set-staff-size 14)
    }
    \midi { }
  }
  \paper {
    #(set-paper-size "a3")
    system-separator-markup = \slashSeparator
  }
}

%{
\book {
  \bookOutputName "Part 01 - Piccolo"
  \score {
    \compressMMRests {\scoreAPiccoloPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 02 - FluteI"
  \score {
    \compressMMRests {\scoreAFluteIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 03 - FluteII"
  \score {
    \compressMMRests {\scoreAFluteIIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 04 - Oboe"
  \score {
    \compressMMRests {\scoreAOboePart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 05 - Bassoon"
  \score {
    \compressMMRests {\scoreABassoonPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 06 - EflatClarinet"
  \score {
    \compressMMRests {\transpose ef c \scoreAEflatClarinetPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 07 - ClarinetI"
  \score {
    \compressMMRests {\transpose bf c' \scoreAClarinetIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 08 - ClarinetII"
  \score {
    \compressMMRests {\transpose bf c' \scoreAClarinetIIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 09 - ClarinetIII"
  \score {
    \compressMMRests {\transpose bf c' \scoreAClarinetIIIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 10 - BassClarinet"
  \score {
    \compressMMRests {\transpose bf c' \scoreABassClarinetPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 11 - AltoSaxI"
  \score {
    \compressMMRests {\transpose ef c' \scoreAAltoSaxIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 12 - AltoSaxII"
  \score {
    \compressMMRests {\transpose ef c' \scoreAAltoSaxIIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 13 - TenorSax"
  \score {
    \compressMMRests {\transpose bf c' \scoreATenorSaxPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 14 - BaritoneSax"
  \score {
    \compressMMRests {\transpose ef c' \scoreABaritoneSaxPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 15 - TrumpetBbI"
  \score {
    \compressMMRests {\transpose bf c' \scoreATrumpetBbIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 16 - TrumpetBbII"
  \score {
    \compressMMRests {\transpose bf c' \scoreATrumpetBbIIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 17 - HornFI"
  \score {
    \compressMMRests {\transpose f c' \scoreAHornFIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 18 - HornFII"
  \score {
    \compressMMRests {\transpose f c' \scoreAHornFIIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 17-18 - HornFI-II"
  \score {
    \compressMMRests {
          <<
        \new StaffGroup <<
          \transpose f c' \scoreAHornFIPart
          \transpose f c' \scoreAHornFIIPart
        >>
      >>}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 19 - TromboneI"
  \score {
    \compressMMRests {\scoreATromboneIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 20 - TromboneII"
  \score {
    \compressMMRests {\scoreATromboneIIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 21 - Euphonium"
  \score {
    \compressMMRests {\scoreAEuphoniumPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 22 - Tuba"
  \score {
    \compressMMRests {\scoreATubaPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 23 - Timpani"
  \score {
    \compressMMRests {\scoreATimpaniPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 24-25 - Claviers"
  \score {
    \compressMMRests {
      <<
        \new StaffGroup <<
          \scoreAGlockenspielPart
          \scoreAXyloPart
        >>
      >>
    }
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 26 - Drums"
  \score {
    \compressMMRests {\scoreADrumsPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
\book {
  \bookOutputName "Part 27 - Piano"
  \score {
    \compressMMRests {\scoreAPianoPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 14)
    }
  }
  \paper {
    #(set-paper-size "letter")
  }
}
%}
