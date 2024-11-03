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

#(define mydrums '(
                    (hiwoodblock  cross   #f  2)
                    (lowoodblock  cross   #f  0)
                    (bassdrum     default #f -3)
                    (snare        default #f  1)
                    (crashcymbal  xcircle #f  5)
                    (lowfloortom  default #f -4)
                    (highfloortom default #f -2)
                    (tambourine   default #f  0)
                    )
   )

\layout {
  \enablePolymeter
  \context {
    \StaffGroup
    % \RemoveAllEmptyStaves
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

  \overrideTimeSignatureSettings
  7/8        % timeSignatureFraction
  1/8        % baseMoment
  4,3        % beatStructure
  #'()       % beamExceptions

  \overrideTimeSignatureSettings
  9/8        % timeSignatureFraction
  1/8        % baseMoment
  4,3,2        % beatStructure
  #'()       % beamExceptions
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
  {c8-. c16-. c-. r c-. c8-. c-. c-.} {a8-. a16-. a-. r a-. a8-. a16-. a-. a8-.}
  {b8-. b16-. b-. r b-. b8-. b-. b-.} {g8-. g16-. g-. r g-. g8-. g-. g-.}
  {a8-. a16-. a-. r a-. a8-. a-. a-.} {c8-. c16-. c-. r c-. c8-. c-. c-.}
  \mark\default {e8-. e16-. e-. r e-. e8-. e-. e-.} {b8-. b16-. b-. r b-. b8-. b16-. b-. b8-.}
  {c8-. c16-. c-. r c-. c8-. c-. c-.} {a8-. a16-. a-. r a-. a8-. a16-. a-. a8-.}
  {b8-. b16-. b-. r b-. b8-. b-. b-.} {g8-. g16-. g-. r g-. g8-. g16-. g-. g8-.}
  {a8-.\startTextSpan a16-. a-. r a-. a8-. a-. a-.} {c8-. c16-. c-. r c-. c8.-. c16-. c-. c-.\stopTextSpan}
}
greenPathBassC = {
  \override TextSpanner.bound-details.left.text = "poco rit."
  {b8-.\ff b16-. b-. r b-. b8-. b-. b-.} {fs8-. fs16-. fs-. r fs-. fs8-. fs16-. fs-. fs8-.}
  {g8-. g16-. g-. r g-. g8-. g-. g-.} {e8-. e16-. e-. r e-. e8-. e16-. e-. e8-.}
  {fs8-. fs16-. fs-. r fs-. fs8-. fs-. fs-.} {d8-. d16-. d-. r d-. d8-. d-. d-.}
  {e8-. e16-. e-. r e-. e8-. e-. e-.} {e8-. e16-. e-. r f-. f8-. f-. f-.}
  {\mark\default fs8-. fs16-. fs-. r fs-. fs8-. fs-. fs-.} {fs8-. fs16-. fs-. r fs-. fs8-. fs16-. fs-. fs8-.}
  {fs8-. fs16-. fs-. r fs-. fs8-. fs-. fs-.} {fs8-. fs16-. fs-. r fs-. fs8-. fs16-. fs-. fs8-.}
  {fs8-. fs16-. fs-. r fs-. fs8-. fs-. fs-.} {fs8-. fs16-. fs-. r fs-. fs8-. fs16-. fs-. fs8-.}
  {fs8-.\startTextSpan fs16-. fs-. r fs-. fs8-. fs-. fs-.}
  {fs8-. fs16-. fs-. r fs-. fs8.-. fs16-. fs-. fs-.\stopTextSpan}
}

fungalBass = \fixed c {
  e8-. e'-. b-. d-. d'-. a-. r4
}





%%% PARTS

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
  b'2.\p^\markup {\italic "espressivo cantabile"}\< \startTrillSpan~2.\> r4\!\stopTrillSpan b8\mp\>~4.~2. r4\!
  b8\mp\>~4.~2. r4\! b8\mp\>~4.~2. \mark\default R2.*14\!

  \relative c'' {\greenPathPatternA \greenPathPatternB}

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4
  \key a \minor
  \repeat volta 2 {
    a8\fp r r e r4 g4-. r4 c,8 r e r r e r4 d4-. r4 b8 r e r r e r4 g4-. r4 c,8 r
    e-.->\< e-. e-. f-.-> f-. f-. g-.-> g-. g-. a-.-> a-. a-.
    \time 4/4 b-.-> b-. b-. b-. c-.-> c-. c-. c-. \time 3/4
    \mark\default d\mf\<(-> c b) c(-> b a) d(-> c b) c(-> b a) g(-> f e) f(-> e d)
    \tuplet 3/2 {d\f-.-> c-. bf-.} \tuplet 3/2 {bf-.-> a-. g-.} \tuplet 3/2 {f'-.-> e-. d-.}
    \mark\default a'4-.-> r r
    R2.*5
    \alternative {
      \volta 1 {
        R2.*2 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a,8\p r a r a r a r a r a r a\< r b r c r d r e r g r
        \mark\default a4.(\f d c b) a4-. r4 r R2. a4.( d c b) a4-. r4 r R2.*5
        cs,4.(\mf\< fs e ds) a'8\fp\<-.-> a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-.
        \mark\default a\fp r r e r4 g4-. r4 c,4-.
        bf'8\< r r bf r4 bf8 r r bf r4 a8\fp r r e r4 g4-. r4 r
        bf8\< r r bf r4 bf8 r r bf r4 \mark\default a4\!\fp r4 r R2.*5
        d8 c->( b) c->( b a) c->( b a) g->( f e) e r r a r4 a-.\< b-. a-.
        a16\f( b c8--) r a\p r4 a-. a-. a-. a8 r r a r4 a-.\< b-. a-.
        a16\f( c d8--) r a\p r4 a16\f ( d e8--) r4 r
      }
      \volta 2 {
        R2.*2 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a,4.\mf e'->~2. g4(-> f d) e(-> c b) a4.( d c b
        \mark\default a4-.->) r4 r R2.*9
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default es4.(\ff fs e gs a4) \startTextSpan
        r4 r R2.*2 g8^\markup{\italic "8va ad lib"} \ff->-. g-. g-. gs-.-^ gs-.-^ gs-.-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  R1*5 r2 r8 e4.\pp~1~1 \mark\default
  R1*8 \mark\default
  R1*2 r2 b2\pp\<~1\> R1*6\! r2 e\pp\<~1\>~1\<~1\> R1\! R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \mark\default

  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 d4\mf( a') a8( g f) \time 3,3,3 9/8 g( f e) f( e d) e( d c)
  \time 7/8 d4( a) a4.\>~ \time 9/8 2~4. r4\!

  \mark\default
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 d4-.\mp\< d-. e4.-. d4-. d-. cs4.-. d4-. d-. e4.-. \time 9/8 g-. a-. cs-.

  \time 7/8 d4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default \time 4/4
  d,16(\p e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.)
  d,16( e f g a4-.) b16( a g f e4-.) b'16( a g f e4-.) g16( f e d c4-.)
  d16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.)

  \mark\default
  d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.)
  d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.)
  d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.) f16( g a b c4-.)

  \time 2/4 r4 d4-.-^\fermata

  \grace {bf32\f( b}
  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4
  c8->) r r c,-> r4 c-.-> c8-> r r c-> r4 c-.-> c8-> r r c-> r4 c-.->
  \tuplet 6/4 {c16\p\<( bf b bf c cs } \tuplet 6/4 {d ef d ef e f }
  \tuplet 6/4 {gf f e f gf g } \tuplet 6/4 {af a af a bf b }
  c8->\ff) r r c,-> r4 c-.-> c8-> r r c-> r4 c-.-> R1*2 \mark\default

  R1*4 c'4.\ff c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-. \mark\default

  c4-. r4 r2 R1*7 \mark\default

  R1*4 c4.\f c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-. \mark\default

  c8.-.\f c16-.~8 c-.~16 c8.-. c4-. R1
  c8.-. c16-.~8 c-.~16 c8.-. c4-. R1
  af8.-. af16-.~8 af-.~16 af8.-. af4-. \mark\default R1*3
  \tuplet 6/4 {c,16\p\<( bf b bf c cs } \tuplet 6/4 {d ef d ef e f }
  \tuplet 6/4 {gf f e f gf g } \tuplet 6/4 {af a af a bf b }

  \mark\default
  c8->\ff) r r c,-> r4 c-.-> c8-> r r c-> r4 c-.-> c8-> r r c-> r4 c-.->
  \tuplet 6/4 {c16\p\<( bf b bf c cs } \tuplet 6/4 {d ef d ef e f }
  \tuplet 6/4 {gf f e f gf g } \tuplet 6/4 {af a af a bf b }
  c8->\ff) r r c,-> r4 c-.-> c8-> r r c-> r4 c-.-> R1*2 \mark\default

  R1*4 \mark\default c'4.\mf c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.

  c4-. r8 c16 c c8 c16 c c c c c g8-^ g-^ r g-^ g4-^ c8-^ c-^ c4-^ r r2 \fine
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
  R2.*5 r8 r r16 g(\p a e fs b, cs ds e4.) r
  R2.*7 {\mark\default fs'16->\mp ( b, cs a b8-.) fs'16->( b, cs a b8-.)}
  R2.*3 {fs16-> ( b, cs a b8-.) fs'16->( b, cs a b8-.)}
  R2. {b'16->\mf ( e, fs d e8-.) b'16->( e, fs d e8-.)} R2. \mark\default R2.
  {cs16 (b cs fs e fs cs' b cs fs e fs)} R2.*3 {cs,16 (b cs fs e fs cs' b cs fs e fs)} R2.
  {fs8-.\mp\< e-. d-. b-. b-. a-. \mark\default e4.-.\! r4.}
  R2.*13
  \relative c'' {\greenPathPatternA \greenPathPatternB}

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a8\fp-.-> e'-. e-. e-.-> e-. e-. g->( f) d( e) c->( b)
    e-.-> e-. e-. e-.-> e-. e-. d->( c) a( c) b->( g)
    e'-.-> e-. e-. e-.-> e-. e-. g->( f) d( e) c-> (b) e4->-. r4 r R2.
    \time 4/4 R1 \time 3/4
    \mark\default d8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g'->( f e) f->( e d)
    \tuplet 3/2 {d-.->\f c-. bf-.} \tuplet 3/2 {bf-.-> a-. g-.} \tuplet 3/2 {f-.-> e-. d-.}
    \mark\default a'4-.-> r r R2.*5

    \alternative {
      \volta 1 {
        R2.*2  \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a,16\p( e f gs a8-.) r a16( e f gs a8-.) r a16( e f gs a8-.) r
        a16\<( f gs a b8-.) r c16( a b c d8-.) r e16( d e f g8-.) r
        \mark\default a4.\f( d c b) a4-> r4 r R2. a4.( d c b) a4-> r4 r R2.
        a4.\p\<( d c b) R2.*2\! cs4.\mf\<( fs e ds) a8->-.\fp\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-.
        \mark\default a'-.->\fp e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b) e->\< e e e-> e e e-> e e e-> e e
        a-.->\fp e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b) e->\< e e e-> e e e-> e e e-> e e
        \mark\default a,\fp^"Ossia, tremolo 2x"
        c->( b a b c) a c->( b a b c) d c->( b) c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) f e->( d) e->( d c) e->( d c) b->( a gs)
        a c->( b a b c) a c->( b a b c) d-> r r c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) d4-> r4 r e4-> r4 r
      }
      \volta 2 {
        R2.*2 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a,4.\mf e'->~2. g4(-> f d) e->( c b) a4.( d c b)
        \mark\default r4 g,16\mp\<( a b c a8-.) r b16( c d e c8-.) r d16( e f g)
        a4.\mf( d c b a4-.) r4 r R2. a4.\mf\<( d-> c b)->\f R2.*2
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default cs,4.\ff( fs e gs) a8\<-.->\fp\startTextSpan a-. a-. a-. a-. a-. b-.-> b-. b-. b-. b-. b-.
        c-.-> c-. c-. c-. c-. c-. g'-.->\ff g-. g-. gs-.-^ gs-.-^ gs-.-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  R1*6 r4 g,2.\pp~1 \mark\default
  R1 r4 fs2.~1 R1*2 r2 d\pp~1~1 \mark\default
  e1\pp~1~1~1 R1*6 r2 b\pp\<~1\>~1\<~1\> R1\! R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 a4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 4/4
  d16(\mf\< e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.)

  \mark\default
  d,16(\p e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.)
  d,16( e f g a4-.) b16( a g f e4-.) b'16( a g f e4-.) g16( f e d c4-.)
  d16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.)
  d,16( e f g a4-.) f16( g a b c4-.) b16( a g f e4-.) d16( e f g a4-.)
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \mark\default

  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 d,4(\f a') a8( g f) \time 3,3,3 9/8 g( f e) f( e d) e( d c)
  \time 7/8 d4( a') a4.~ \time 9/8 2~4. r4
  \time 7/8 d,4( a') a8( g f) \time 3,3,3 9/8 g( f e) f( e d) e( d c)
  \time 7/8 d4( a) a4.~ \time 9/8 2~4. r4

  \mark\default
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 d8\f-.\< a-. d-. a-. e'-. f-. e-. d-. a-. d-. a-. cs-. d-. e-. d-. a-. d-. a-. e'-. f-. e-.
  \time 3,3,3 9/8 g-. a-. g-. a-. b-. a-. b-. c-. cs-.

  \time 7/8 d4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default \time 4/4
  d,16(\p e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.)
  d,16( e f g a4-.) b16( a g f e4-.) b'16( a g f e4-.) g16( f e d c4-.)
  d16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.)

  \mark\default
  d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.)
  d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.)
  d,16( e f g a4-.) d,16( e f g a4-.) d,16( e f g a4-.) f16( g a b c4-.)

  \time 2/4 r4 a'4-.-^\fermata

  \grace {bf,32\f( b}
  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4
  c8->) r r c,-> r4 c-.-> c8-> r r c-> r4 c-.-> c8-> r r c-> r4 c-.->
  \tuplet 6/4 {g'16\p\<( fs e ef e fs} \tuplet 6/4 {g gs a bf b c}
  \tuplet 6/4 {ef, e f g gs a} \tuplet 6/4 {bf b c cs d ef}
  c8->\ff) r r c,-> r4 c-.-> c8-> r r c-> r4 c-.-> R1*2 \mark\default

  R1*7 \tuplet 6/4 {g'16\p\<( fs e ef e fs} \tuplet 6/4 {g gs a bf b c}
  \tuplet 6/4 {ef, e f g gs a} \tuplet 6/4 {bf b c cs d ef} \mark\default

  c4->)\ff r4 r2 c,16\p( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2 R1 \mark\default

  c4.\p c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-. R1*4 \mark\default

  c8.-.\f c16-.~8 c-.~16 c8.-. c4-.
  \tuplet 6/4 {af'16( bf af g af g} \tuplet 6/4 {f g f ef f ef}
  \tuplet 6/4 {f g f ef f ef} \tuplet 6/4 {d ef d cs d cs)}
  c?8.-. c16-.~8 c-.~16 c8.-. c4-.
  \tuplet 6/4 {ef16( ff ef df ef df} \tuplet 6/4 {cf df cf bf cf bf}
  \tuplet 6/4 {df ef df cf df cf} \tuplet 6/4 {bf cf bf a bf a)}
  af8.-. af16-.~8 af-.~16 af8.-. af4-. \mark\default R1*3
  \tuplet 6/4 {g'16\p\<( fs e ef e fs} \tuplet 6/4 {g gs a bf b c}
  \tuplet 6/4 {ef, e f g gs a} \tuplet 6/4 {bf b c cs d ef}

  \mark\default
  c8->\ff) r r c,-> r4 c-.-> c8-> r r c-> r4 c-.-> c8-> r r c-> r4 c-.->
  \tuplet 6/4 {g'16\p\<( fs e ef e fs} \tuplet 6/4 {g gs a bf b c}
  \tuplet 6/4 {ef, e f g gs a} \tuplet 6/4 {bf b c cs d ef}
  c8->\ff) r r c,-> r4 c-.-> c8-> r r c-> r4 c-.-> R1*2 \mark\default

  R1*4 \mark\default c'4.\mf c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. r8 r4
  \tuplet 6/4 {g,16\p\<( fs e ef e fs} \tuplet 6/4 {g gs a bf b c}
  \tuplet 6/4 {ef, e f g gs a} \tuplet 6/4 {bf b c cs d ef}

  c4-.)\ff r8 c16 c c8 c16 c c c c c g'8-^ g-^ r g-^ g4-^ <g c>8-^ q-^ q4-^ r r2  \fine
}

scoreAFluteII = \relative c'' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*2 e2.\pp~2. \repeat unfold 3 {R2.*2 e2.~2.}

  \time 6/8 \mark\default
  R2.*7 fs16->\p ( b cs a b8-.) r4. R2.*8 {\mark\default fs16->\mp ( b cs a b8-.) fs16->( b cs a b8-.)}
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

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a8\fp-.-> e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b)
    e-.-> e-. e-. e-.-> e-. e-. d->( c) a( c) b->( g)
    e'-.-> e-. e-. e-.-> e-. e-. g->( f) d( e) c-> (b) e4->-. r4 r R2.
    \time 4/4 R1 \time 3/4
    \mark\default d'8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g->( f e) f->( e d)
    \tuplet 3/2 {d'-.->\f c-. bf-.} \tuplet 3/2 {bf-.-> a-. g-.} \tuplet 3/2 {f-.-> e-. d-.}
    \mark\default a4-.-> r r R2.*5

    \alternative {
      \volta 1 {
        R2.*2  \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        r4 a16\p (e f gs a8-.) r a16 (e f gs a8-.) r a16 (e f gs
        a8-.\<) r b16 (gs a b c8-.) r d16 (b c d e8-.) r g16( e f g)
        \mark\default a4.(\f d, c b) a4-.-> r4 r R2. a'4.( d, c b) a4-.-> r4 r R2.
        a'4.(\p\< d, c b) R2.*2\! cs4.(\mf\< fs e ds) a8->-.\fp\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-.
        \mark\default a'-.->\fp e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b) e->\< e e e-> e e e-> e e e-> e e
        a-.->\fp e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b) e->\< e e e-> e e e-> e e e-> e e
        \mark\default a,\fp c->( b a b c) a c->( b a b c) d c->( b) c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) d' c->( b) c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) d-> r r c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) d4-> r4 r e4-> r4 r
      }
      \volta 2 {
        R2.*2 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a,,4.\mf e'->~2. g4(-> f d) e(-> c b) a4.( d c b)
        \mark\default f16\mp\<( g a b g8-.) r a16( b c d b8-.) r c16( d e f d8-.) r
        a'4.(\mf d c b a4-.) r4 r R2.*5
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default cs,4.(\ff fs e gs) a8\<-.->\fp\startTextSpan a-. a-. a-. a-. a-. b-.-> b-. b-. b-. b-. b-.
        c-.-> c-. c-. c-. c-. c-. g-.->\ff g-. g-. gs-.-^ gs-.-^ gs-.-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  R1*8 \mark\default
  R1*5 r4. cs,8\pp\>~2~1\!~1 \mark\default
  R1*2 r2 b2\pp\<~1\> R1*6\! r2 e\pp\<~1\>~1\<~1\> R1\! R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 g,4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 4/4
  d'4-.\mf\< a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e

  \mark\default
  d4-.)\p a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e
  d4-.) a'16( g f e d4-.) c'16( b a g f4-.) a16( g f e d4-.) f16( e d c
  d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e
  d4-.) e16( f g a b4-.) g16( a b c d4-.) a16( g f e d4-.) a'16( g f e)
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \mark\default

  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 a,4(\f e') e4 c8( \time 9/8 d4-.) b8( c4-.) a8( b4-.) g8(
  \time 7/8 a4 e') e4.~\time 9/8 2~4. r4
  \time 7/8 a,4( e') e4 c8( \time 9/8 d4-.) b8( c4-.) a8( b4-.) g8(
  \time 7/8 a4 e) e4.~\time 9/8 2~4. r4

  \mark\default
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 d'8\f-.\< a-. d-. a-. e'-. f-. e-. d-. a-. d-. a-. cs-. d-. e-. d-. a-. d-. a-. e'-. f-. e-.
  \time 3,3,3 9/8 g-. a-. g-. a-. b-. a-. b-. c-. cs-.

  \time 7/8 d4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default \time 4/4
  d,4-.\p a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e
  d4-.) a'16( g f e d4-.) c'16( b a g f4-.) a16( g f e d4-.) f16( e d c
  d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e

  \mark\default
  d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e
  d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e
  d4-.) a'16( g f e d4-.) a'16( g f e d4-.) e16( f g a f4-.) g16( a b c)

  \time 2/4 r4 d4-.->\fermata

  \grace {f,32\f( fs}
  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4
  g8->) r r g-> r4 g-.-> g8-> r r g-> r4 g-.-> g8-> r r g-> r4 g-.->
  \tuplet 6/4 {ef16\p\<( d c b c d} \tuplet 6/4 {ef e f fs f e}
  \tuplet 6/4 {a bf a af a bf} \tuplet 6/4 {fs g gs a as b}
  c8->\ff) r r g-> r4 g-.-> g8-> r r g-> r4 g-.-> R1*2 \mark\default

  R1*7 \tuplet 6/4 {ef16\p\<( d c b c d} \tuplet 6/4 {ef e f fs f e}
  \tuplet 6/4 {a, bf a af a bf} \tuplet 6/4 {fs g gs a as b} \mark\default

  c16\fp bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2 \mark\default

  c4.\p c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} ef8-. ef-. r ef-. ef4-. ef8-. ef-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} ef8-. ef-. r f-. f4-. f8-. f-. R1*4 \mark\default

  g8.-.\f g16-.~8 g-.~16 g8.-. g4-.
  R1
  g8.-. g16-.~8 g-.~16 g8.-. g4-.
  R1
  ef8.-. ef16-.~8 ef-.~16 ef8.-. ef4-. \mark\default R1*3
  \tuplet 6/4 {ef16\p\<( d c b c d} \tuplet 6/4 {ef e f fs f e}
  \tuplet 6/4 {a bf a af a bf} \tuplet 6/4 {fs g gs a as b}

  \mark\default
  c8->\ff) r r g-> r4 g-.-> g8-> r r g-> r4 g-.-> g8-> r r g-> r4 g-.->
  \tuplet 6/4 {ef16\p\<( d c b c d} \tuplet 6/4 {ef e f fs f e}
  \tuplet 6/4 {a bf a af a bf} \tuplet 6/4 {fs g gs a as b}
  c8->\ff) r r g-> r4 g-.-> g8-> r r g-> r4 g-.-> R1*2 \mark\default

  R1*4 \mark\default c4.\mf c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. r8 r4 \tuplet 6/4 {ef,16\p\<( d c b c d} \tuplet 6/4 {ef e f fs f e}
  \tuplet 6/4 {a bf a af a bf} \tuplet 6/4 {fs g gs a as b}

  c4-.)\ff r8 c16 c c8 c16 c c c c c g8-^ g-^ r g-^ g4-^ g8-^ g-^ c4-^ r r2 \fine
}

scoreAOboe = \relative c'' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*8
  e1\mp~2\< e, a \tuplet 3/2 {a4( b c )} bf1 c\f\> R1*2\!
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
  {fs-.\mp\< e-. d-. b-. b-. a-. \mark\default e4.-.\! r4.} R2.*13
  \relative c' {\greenPathPatternA \greenPathPatternB}

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a8\fp r r e r4 g4-. r4 c8->( b) e, r r e r4 d4-. r4 b'8 r a r r e r4 g4-. r4 c8->( d)
    e-.->\< e-. e-. f-.-> f-. f-. g-.-> g-. g-. a->-. a-. a-.
    \time 4/4 b-.-> b-. b-. b-. c->-. c-. c-. c-. \time 3/4
    \mark\default d8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g->( f e) f->( e d) d4-.->\f r4 r
    \mark\default a4.\mf e'->~2. g4->( f d) e->( c b) a4.->( d c b

    \alternative {
      \volta 1 {
        a) r R2. \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a8\p r a r a r a r a r a r a\< r b r c r d r e r g r
        \mark\default a4.(\f d c b) a4-.-> r4 r R2. a4.( d c b) a4-. r4 r R2.*3
        b4.(\mp\< e d b) R2.*2 e,2.\fp\<~2.
        \mark\default a,8\fp r r e r4 g4-. r4 c8( b) bf\< r r bf r4 bf8 r r bf r4
        a8\fp r r e r4 g4-. r4 c8( b) bf\< r r bf r4 bf8 r r bf r4 \mark\default a4-.\fp r4 r R2.*5
        f'8 e->( d) e->( d c) e->( d c) b->( a gs) a r r a r4 a-.\< b-. a-. a16\f(b c8--) r a\p r4 a-. a-. a-.
        a8 r r a r4 a-.\< b-. a-. a16\f( c d8--) r a\p r4 a16\f( d e8--) r4 r
      }
      \volta 2 {
        R2.*3 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        g8-.->\mf f-. d-. e-. c-.-> b-. g'4(-> f d) e(-> c b) a4.( d c b)
        \mark\default a4-.-> r4 r R2. a4.(\mf d c b a4-.) r4 r R2.*3
        b4.(\f\< e-> d b)-> \override TextSpanner.bound-details.left.text = "rall."
        \mark\default cs,4.(\ff fs e gs) a8\<-.->\fp\startTextSpan a-. a-. a-. a-. a-. b-.-> b-. b-. b-. b-. b-.
        c-.-> c-. c-. c-. c-. c-. c-.->\ff c-. c-. c-.-^ c-.-^ c-.-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*2 r2 r8 b'4.\p\<~1\> \mark\default
  R1*5\! r4 g2.\p\>~1~1 \mark\default
  R1*5\! r4 b,2.\pp~1~1 \mark\default
  e1\pp\<~1\>~1\<~1\> R1*4\! r2 e~1~2 r R1*3 r2 r4 as,\pp\>~1\fermata R1\!\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 d4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \mark\default

  \time 7/8 d4\f( a') a8( g f) \time 3,3,3 9/8 g( f e) f( e d) e( d c)
  \time 7/8 d4( a') a4.~ \time 9/8 2~4. r4
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 d,4( a') a8( g f) \time 3,3,3 9/8 g( f e) f( e d) e( d c)
  \time 7/8 d4( a') a4.~ \time 9/8 2~4. r4
  \time 7/8 d,4( a') a8( g f) \time 3,3,3 9/8 g( f e) f( e d) e( d c)
  \time 7/8 d4( a) a4.~ \time 9/8 2~4. r4

  \mark\default
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 d8\f-. a-. d-. a-. e'-. f-. e-. d-. a-. d-. a-. c-. d-. e-. d-. a-. d-. a-. e'-. f-. e-.
  \time 3,3,3 9/8 f-. e-. d-. e-. d-. c-. d-. c-. d-.
  \time 7/8 d4-.\mp\< d-. e4.-. d4-. d-. cs4.-. d4-. d-. e4.-. \time 9/8 g-. a-. cs-.

  \time 7/8 d4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default \time 4/4
  d,4-.\p a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e
  d4-.) a'16( g f e d4-.) c'16( b a g f4-.) a16( g f e d4-.) f16( e d c
  d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e

  \mark\default
  d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e
  d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e d4-.) a'16( g f e
  d4-.) a'16( g f e d4-.) a'16( g f e d4-.) e16( f g a f4-.) g16( a b c)

  \time 2/4 r4 d4-.->\fermata

  \grace {bf,32\f( b}
  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4
  c8->) \repeat unfold 7 {c8-.} \repeat unfold 8 {af8-.}
  \repeat unfold 8 {g8-.} \tuplet 3/2 {f4-. f'-. f,-.} \tuplet 3/2 {f-. f'-. f,-.}
  \repeat unfold 8 {c'8-.} \repeat unfold 8 {af8-.}
  \tuplet 3/2 {gf4-. gf'-. gf,-.} \tuplet 3/2 {gf-. gf'-. gf,-.}
  \tuplet 3/2 {ef4-. ef'-. ef,-.} \tuplet 3/2 {ef-. ef'-. g,-.} \mark\default

  R1*8 \mark\default

  R1*8 \mark\default

  c,4.\p c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c'4.\f c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  \mark\default

  ef8.-.\f ef16-.~8 ef-.~16 ef8.-. ef4-. R1
  ef8.-. ef16-.~8 ef-.~16 ef8.-. ef4-. R1
  ef8.-. ef16-.~8 ef-.~16 ef8.-. ef4-. \mark\default R1*4 \mark\default

  c8\f-> \repeat unfold 7 {c8-.} \repeat unfold 8 {af8-.}
  \repeat unfold 8 {g8-.} \tuplet 3/2 {f4-. f'-. f,-.} \tuplet 3/2 {f-. f'-. f,-.}
  \repeat unfold 8 {c'8-.} \repeat unfold 8 {af8-.}
  \tuplet 3/2 {gf4-. gf'-. gf,-.} \tuplet 3/2 {gf-. gf'-. gf,-.}
  \tuplet 3/2 {ef4-. ef'-. ef,-.} \tuplet 3/2 {ef-. ef'-. g,-.} \mark\default

  R1*4 \mark\default c4.\mf c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.

  c4-. r8 c16 c c8 c16 c c c c c g8-^ g-^ r g-^ g4-^ c8-^ c-^ c4-^ r r2 \fine
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

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a8\fp-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-.
    a-.-> a-. a-. a-.-> a-. a-. f-.-> f-. f-. f-. g-.-> r
    a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-.
    a-.->\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-.
    \time 4/4 f-.-> f-. f-. f-. f-.-> f-. f-. f-. \time 3/4
    \mark\default d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. bf-.-> bf-. bf-. bf-.-> bf-. bf-. bf2.\f\>
    \mark\default a4-.->\p r r g'8->\mf( f d e) c->( b) e4-.-> r4 r R2.*2 e8->( d b c) a->( b)

    \alternative {
      \volta 1 {
        a4-.-> r4 r R2. \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4.\f e'->~2. g4(->\< f d) e( c b)
        \mark\default a8-.->\fp\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-. e4-.->\f r4 r R2.
        a8-.->\fp\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-. e4-.->\f r4 r R2.
        fs8-.->\< fs-. fs-. fs-.-> fs-. fs-. f?-.-> f-. f-. f-.-> f-. f-.
        gs-.-> gs-. gs-. gs-.-> gs-. gs-. g?-.-> g-. g-. g-.-> g-. g-.
        bf-.-> bf-. bf-. bf-.-> bf-. bf-. a-.-> a-. a-. a-.-> a-. a-.
        f-.->\fp\< f-. f-. f-.-> f-. f-. f-.-> f-. f-. f-.-> f-. f-.
        \mark\default a-.->\fp a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. bf2.\<~2.\f\>
        a8-.->\p a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. bf2.\<~2.\f\>
        \mark\default a8-.->\p a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-.
        a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-.
        a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-.
        a-. a-. a-. a-. a-. a-. b-.-> b-. a-.-> a-. g-.-> g-.
        f-.-> f-. r f-. f-. f-. f-. f-. r f-. f-. f-.
        f-. f-. r f-. f-. f-. f-. f-. r f-. d-.\< d-.
        d2\f\> e8-.\p\< e-. e2\f d8-.\> d-. a'-.\p\< a-. b-. b-. c-. c-. b-. b-. c-. c-. d-. d-.
      }
      \volta 2 {
        a4-.->\! r4 r R2. \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a8-.->\mf a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-. a-.
        ef'-.-> ef-. ef-. ef-.-> ef-. ef-. d-.-> d-. d-. d-. d-. d-.
        a-.->\< a-. a-. a-. a-. a-. g-. g-. g-. g-. g-. g-.
        \mark\default e4-.\fp r4 r R2. a8-.->\< a-. a-. a-. a-. a-. g-. g-. g-. g-. g-. g-. e4-.\fp r4 r R2.
        fs8-.->\<\p fs-. fs-. fs-.-> fs-. fs-. f?-.->\mf\> f-. f-. f-.-> f-. f-.
        gs-.->\mp\< gs-. gs-. gs-.-> gs-. gs-. g?-.->\f\> g-. g-. g-.-> g-. g-.
        \mark\default bf-.->\mf\< bf-. bf-. bf-.-> bf-. bf-. a-.->\ff\> a-. a-. a-.-> a-. a-.
        \override TextSpanner.bound-details.left.text = "rall."
        f2.\fp\<\startTextSpan ~2.~2.~2.\ff R2.\fermata \stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  R1*8 \mark\default
  R1*8 \mark\default
  e'4.\f^\markup{\italic "solo"} fs8 g4. a8 b2 cs~2 ~8 d b a b1
  r4 e\< d4. e8 fs2 \grace {e16( fs g} fs4) d cs2 \grace {d16( cs} b4.) a8 b1\>
  b8\f d b d e2~4 b8 d b d e fs g4. fs8 e2\>
  r4\! r8 d8\mf\< e c b a b1\f\> \grace {b16( a g} fs2)~8 e\mp( a4) a4. g16 fs e4 ds~1\>\fermata R1\!\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 R1*7/8\! \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \mark\default

  \time 7/8 a'4\f( e') e4 c8( \time 9/8 d4-.) b8( c4-.) a8( b4-.) g8(
  \time 7/8 a4 e') e4.~\time 9/8 2~4. r4
  \time 7/8 a,4( e') e4 c8( \time 9/8 d4-.) b8( c4-.) a8( b4-.) g8(
  \time 7/8 a4 e) e4.~\time 9/8 2~4. r4
  \time 7/8 a4( e') e4 c8( \time 9/8 d4-.) b8( c4-.) a8( b4-.) g8(
  \time 7/8 a4 e') e4.~\time 9/8 2~4. r4
  \time 7/8 a,4( e') e4 c8( \time 9/8 d4-.) b8( c4-.) a8( b4-.) g8(
  \time 7/8 a4 e) e4.~\time 9/8 2~4. r4

  \mark\default
  \time 7/8 d4-. d-. e4.-. d4-. d-. c4.-. d4-. d-. e4.-. \time 9/8 f-. e-. r
  \time 7/8 d4-. d-. e4.-. d4-. d-. c4.-. d4-. d-. e4.-. \time 9/8 f-. e-. r
  \time 7/8 d4-.\< d-. e4.-. d4-. d-. cs4.-. d4-. d-. e4.-. \time 9/8 g-. a-. a-.

  \time 7/8 a4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 d,4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 bf4-.-> r bf4.-.-> \time 9/8 c4-.-> r4 c4.-.-> c4-.->

  \mark\default
  \time 7/8 bf4-.-> r bf4.-.-> \time 9/8 c4-.-> r4 c4.-.-> c4-.->
  \time 7/8 bf4-.-> r bf4.-.-> \time 9/8 c4-.-> r4 c4.-.-> c4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->

  \time 2/4 r4 d4-^-.\fermata

  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  c8-.\f \repeat unfold 23 {c8-.} \tuplet 3/2 {f,4-. f'-. f,-.} \tuplet 3/2 {f-. f'-. f,-.}
  \repeat unfold 16 {c'8-.} \tuplet 3/2 {gf4-. gf'-. gf,-.} \tuplet 3/2 {gf-. gf'-. gf,-.}
  \tuplet 3/2 {ef4-. ef'-. ef,-.} \tuplet 3/2 {ef-. ef'-. g,-.} \mark\default

  \repeat unfold 2 {c4-. c-. c-. c-. c8-. c-. r c-. c4-. c8-. c-. c4-. c-. c-. c-. af8-. af-. r f-. f4-. f8-. f-.}
  \mark\default

  g'1\f af f2 f f1 c f ef2 f g1 \mark\default

  R1*4 c,4-.\f c-. c-. c-. c8-. c-. r c-. c4-. c8-. c-.
  c4-. c-. c-. c-. af8-. af-. r f-. f4-. f8-. f-. \mark\default

  c'4-.\ff c-. c-. c-.
  af'8-.\mf\< g-. f-. ef-. f-. ef-. d-. df-.
  c4-.\ff c-. c-. c-.
  ef8-.\mf\< df-. cf-. bf-. df-. cf-. bf-. a-.
  af4-.\ff af-. af-. af-. \mark\default R1*4 \mark\default

  c8-.\f \repeat unfold 23 {c8-.} \tuplet 3/2 {f,4-. f'-. f,-.} \tuplet 3/2 {f-. f'-. f,-.}
  \repeat unfold 16 {c'8-.} \tuplet 3/2 {gf4-. gf'-. gf,-.} \tuplet 3/2 {gf-. gf'-. gf,-.}
  \tuplet 3/2 {ef4-. ef'-. ef,-.} \tuplet 3/2 {ef-. ef'-. g,-.}
  \mark\default

  c4-.\ff c-. c-. c-. c8-. c-. r c-. c4-. c8-. c-. c4-. c-. c-. c-.
  af8-. af-. r f-. f4-. f8-. f-.
  \mark\default c'4-.-^ c-.-^ c-.-^ c-.-^ c8-.-^ c-.-^ r c-.-^ c4-.-^ c8-.-^ c-.-^
  c4-.-^ c-.-^ c-.-^ c-.-^ af8-.-^ af-.-^ r f-.-^ f4-.-^ f8-.-^ f-.-^

  c'1\fp\< c8-^\ff c-^ r c-^ c4-^ c8-^ c-^ c4-^ r r2 \fine
}

scoreAEflatClarinet = \relative c'' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  e,1\pp\<~1\>^"Keep as long as possible and slowly fade"~1~1~1~1~1~1~1 \mark \default R1*16\! \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  R2.*7 fs''16\p(b, cs a b g a e fs b, cs ds e4.) r4. R2.*7 \mark\default R2.
  fs,16\mf( b cs fs e fs cs' b cs fs e fs) R2.*2 {fs,16\mp-> ( b, cs a b8-.) fs'16->( b, cs a b8-.)}
  R2. {b'16->\mf ( e, fs d e8-.) b'16->( e, fs d e8-.)} R2. \mark\default R2.
  {cs16 (b cs fs e fs cs' b cs fs e fs)} R2.*3 {cs,16 (b cs fs e fs cs' b cs fs e fs)} R2.
  {fs,8-.\mp\< e-. d-. b-. b-. a-. \mark\default e4.-.\! r4.}
  R2.*13
  \relative c'' {\greenPathPatternA \greenPathPatternB}

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a'8\fp-.-> e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b)
    e-.-> e-. e-. e-.-> e-. e-. d->( c) a( c) b->( g)
    e'-.-> e-. e-. e-.-> e-. e-. g->( f) d( c) c->( b) e4-.-> r4 r R2.
    \time 4/4 R1 \time 3/4
    \mark\default d8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g'->( f e) f->( e d) d4-.->\f r4 r
    \mark\default a4.\mf e'->~2. g4->( f d) e->( c b) a4.->( d c b

    \alternative {
      \volta 1 {
        f8) r g r a r b r c r d r \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a\p r a r a r a r a r a r a\< r b r c r d r e r g r
        \mark\default a4.(\f d c b) a4-.-> r4 r R2.
        a4.( d c b) a4-. r4 r R2. a4.(\p\< d c b) R2.*2\! cs4.(\mf\< fs e ds)
        a8-.->\fp\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-.
        \mark\default a8\fp r r e r4 g4-. r4 c,4-. bf'8\< r r bf r4 bf8 r r bf r4
        a8\fp r r e r4 g4-. r4 c,8 r bf'\< r r bf r4 bf8 r r bf r4
        \mark\default a4-.->\fp r4 r R2.*5 f8 e->( d) e->( d c) e->( d c) b->( a gs)
        a r r a r4 a-.\< b-. a-. a16\f(b c8--) r a\p r4 a-. a-. a-.
        a8 r r a r4 a-.\< b-. a-. a16\f( c d8--) r a\p r4 a16\f( d e8--) r4 r
      }
      \volta 2 {
        f,8 r g r a r b r c r d r \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        e4.\mf e->~2. g4(-> f d) e(-> c b) a4.( d c b)
        \mark\default f8 r g r a r b r c r d r a4.(\mf d c b a4-.) r4 r R2.*3 b4.(\f\< e-> d b)->
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default cs,4.(\ff fs e gs) a8\<-.->\fp\startTextSpan a-. a-. a-. a-. a-. b-.-> b-. b-. b-. b-. b-.
        c-.-> c-. c-. c-. c-. c-. g'-.->\ff g-. g-. gs-.-^ gs-.-^ gs-.-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*2 r2 r8 fs4.\p\<~1\> \mark\default
  R1*8\! \mark\default
  R1*8 \mark\default
  R1*15 R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 d4-.->\mp d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.-> \mark\default

  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \mark\default

  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e8-. d4-.-> d8-. c4-.-> c8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d8\f-. a-. d-. a-. e'-. f-. e-. d-. a-. d-. a-. c-. d-. e-. d-. a-. d-. a-. e'-. f-. e-.
  \time 3,3,3 9/8 f-. e-. d-. e-. d-. c-. d-. c-. d-.
  \time 7/8 d4-.\mp d-. e4.-. d4-. d-. c4.-. d4-. d-. e4.-. \time 9/8 f-. e-. r
  \time 7/8 d4-.\< d-. e4.-. d4-. d-. cs4.-. d4-. d-. e4.-. \time 9/8 g-. a-. e-.

  \time 7/8 d4-.->\mp d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->

  \mark\default
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \time 2/4 r4 d4-.-^\fermata

  \grace {bf'32\f( b}
  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4
  c8->) r r c,-> r4 c-.-> c8-> r r c-> r4 c-.-> c8-> r r c-> r4 c-.->
  \tuplet 6/4 {g'16\p\<( fs e ef e fs} \tuplet 6/4 {g gs a bf b c}
  \tuplet 6/4 {ef, e f g gs a} \tuplet 6/4 {bf b c cs d ef}
  c8->\ff) r r c,-> r4 c-.-> c8-> r r c-> r4 c-.-> R1*2 \mark\default

  R1*8 \mark\default

  c16\fp( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2 \mark\default

  R1*4 c4.\f c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-. \mark\default

  c8.-.\f c16-.~8 c-.~16 c8.-. c4-. R1
  c8.-. c16-.~8 c-.~16 c8.-. c4-. R1
  af8.-. af16-.~8 af-.~16 af8.-. af4-. \mark\default R1*4 \mark\default

  c'8->\f r r c,-> r4 c-.-> c8-> r r c-> r4 c-.-> c8-> r r c-> r4 c-.->
  \tuplet 6/4 {g'16\p\<( fs e ef e fs} \tuplet 6/4 {g gs a bf b c}
  \tuplet 6/4 {ef, e f g gs a} \tuplet 6/4 {bf b c cs d ef}
  c8->\ff) r r c,-> r4 c-.-> c8-> r r c-> r4 c-.-> R1*2 \mark\default

  R1*4 \mark\default c4.\mf c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.

  c4-. r8 c16 c c8 c16 c c c c c g'8-^ g-^ r g-^ g4-^ c8-^ c-^ c4-^ r r2 \fine
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

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a8\fp-.-> e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b)
    e-.-> e-. e-. e-.-> e-. e-. d->( c) a( c) b->( g)
    e'-.-> e-. e-. e-.-> e-. e-. g->( f) d( e) c-> (b) e4->-. r4 r R2.
    \time 4/4 R1 \time 3/4
    \mark\default d8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g->( f e) f->( e d)
    \tuplet 3/2 {d'-.->\f c-. bf-.} \tuplet 3/2 {bf-.-> a-. g-.} \tuplet 3/2 {f-.-> e-. d-.}
    \mark\default a'4-.-> r r R2.*5

    \alternative {
      \volta 1 {
        f16\mp\<( g a b g8-.) r a16( b c d b8-.) r c16( d e f d8-.) r
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a16\fp( e f gs a8-.) r a16( e f gs a8-.) r a16( e f gs a8-.) r
        a16\<( f gs a b8-.) r c16( a b c d8-.) r e16( d e f g8-.) r
        \mark\default a4.(\f d, c b) a4-.-> r4 r R2. a'4.( d, c b) a4-.-> r4 r R2.*3
        b4.(\mp\< e d b) cs4.( fs e ds) a8->-.\fp\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-.
        \mark\default a'-.->\fp e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b) e->\< e e e-> e e e-> e e e-> e e
        a-.->\fp e-. e-. e-.-> e-. e-. g->( f) d( e) c->( b) e->\< e e e-> e e e-> e e e-> e e
        \mark\default a,\fp^\markup{\italic "ossia, tremolo 2x"}
        c->( b a b c) a c->( b a b c) d c->( b) c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) f e->( d) e->( d c) e->( d c) b->( a gs)
        a c->( b a b c) a c->( b a b c) d-> r r c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) d4-> r4 r e4-> r4 r
      }
      \volta 2 {
        f,16\mp\<( g a b g8-.) r a16( b c d b8-.) r c16( d e f d8-.) r
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a'4.\mf e->~2. g4(-> f d) e(-> c b) a4.( d c b)
        \mark\default f16\mp\<( g a b g8-.) r a16( b c d b8-.) r c16( d e f d8-.) r
        a'4.(\mf d, c b a4-.) r4 r R2. a4.(\mf\< d-> c b)->\f R2.*2
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default cs4.(\ff fs e gs) a,8\<-.->\fp\startTextSpan a-. a-. a-. a-. a-. b-.-> b-. b-. b-. b-. b-.
        c-.-> c-. c-. c-. c-. c-. g'-.->\ff g-. g-. gs-.-^ gs-.-^ gs-.-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  R1*8 \mark\default
  fs,4.\mf^\markup {\italic "solo"} g8 a2 \grace {fs16 g fs} e2 b' \grace {cs16 d cs} b1 r4 d2 cs8 d
  b2. a8 b g4 fs8 g e2 ~1\> ~1\! \mark\default
  R1*15 R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 a4-.->\mp a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.-> \mark\default

  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b4-. b4-.-> b8-. b4-.->
  \time 7/8 c4-.-> c-. b-.-> b8-. \time 9/8 af4-.-> af4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 g4-.-> g4-. g4-.-> g8-. g4-.->
  \time 7/8 bf4-.-> bf-. c-.-> c8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \mark\default
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b4-. b4-.-> b8-. b4-.->
  \time 7/8 c4-.-> c-. b-.-> b8-. \time 9/8 af4-.-> af4-. a4-.-> a8-. g4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.-> \mark\default

  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b8-. a4-.-> a8-. g4-.-> g8-.
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 d,4(\f a') a8( g f) \time 3,3,3 9/8 g( f e) f( e d) e( d c)
  \time 7/8 d4( a) a4. ~ \time 9/8 2~4. r4
  \time 7/8 a'4-.->\mp a-. a-.-> a8-. \time 9/8 b4-.-> b8-. a4-.-> a8-. g4-.-> g8-.
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b8-. a4-.-> a8-. g4-.-> g8-.
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \mark\default
  \time 7/8 a4-. a-. b4.-. a4-. a-. gs4.-. a4-. a-. b4.-. \time 9/8 c-. b-. r
  \time 7/8 d8\f-. a-. d-. a-. e'-. f-. e-. d-. a-. d-. a-. c-. d-. e-. d-. a-. d-. a-. e'-. f-. e-.
  \time 3,3,3 9/8 f-. e-. d-. e-. d-. c-. d-. c-. d-.
  \time 7/8 d4-.\mp\< d-. e4.-. d4-. d-. cs4.-. d4-. d-. e4.-. \time 9/8 g-. a-. e-.

  \time 7/8 a,4-.->\mp a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \mark\default
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b4-. b4-.-> b8-. b4-.->
  \time 7/8 c4-.-> c-. b-.-> b8-. \time 9/8 af4-.-> af4-. a4-.-> a8-. g4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->

  \mark\default
  \time 7/8 ef4-.-> ef-. ef-.-> ef8-. \time 9/8 f4-.-> f4-. f4-.-> f8-. f4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \time 2/4 r4 a4-.-^\fermata

  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  c8-.\f c-. c-. c-> r4 c-.-> \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 6/4 {ef16\p\<( d c b c d} \tuplet 6/4 {ef e f fs f e}
  \tuplet 6/4 {a bf a af a bf} \tuplet 6/4 {fs g gs a as b}
  c8->\ff) c,-. c-. c-> r4 c-.-> c8-. c-. c-. c-> r4 c-.->
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {bf-. bf-. bf-.}
  \tuplet 3/2 {bf-. bf-. bf-.} \tuplet 3/2 {bf-. bf-. b-.} \mark\default

  R1*8 \mark\default

  R1 c16\p( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf) \mark\default

  R1*8\mark\default

  c8.-.\f c16-.~8 c-.~16 c8.-. c4-. R1
  c8.-. c16-.~8 c-.~16 c8.-. c4-. R1
  af8.-. af16-.~8 af-.~16 af8.-. af4-. \mark\default R1*4 \mark\default

  c8-.\f c-. c-. c-> r4 c-.-> \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 6/4 {ef16\p\<( d c b c d} \tuplet 6/4 {ef e f fs f e}
  \tuplet 6/4 {a bf a af a bf} \tuplet 6/4 {fs g gs a as b}
  c8->\ff) c,-. c-. c-> r4 c-.-> c8-. c-. c-. c-> r4 c-.->
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {bf-. bf-. bf-.}
  \tuplet 3/2 {bf-. bf-. bf-.} \tuplet 3/2 {bf-. bf-. b-.} \mark\default

  R1*4 \mark\default c4.\mf c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.

  g'4-. r8 g16 g g8 g16 g g g g g g8-^ g-^ r g-^ g4-^ <g c>8-^ q-^ q4-^ r r2  \fine
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
  \mark\default e4.-.\! r4. R2.*13

  \relative c' {\greenPathPatternA  \greenPathPatternB}

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a8\fp r r e r4 g4-. r4 c,8 r e r r e r4 d4-. r4 b8 r b r r e r4 g4-. r4 c,8 r
    e4-. r4 r R2. \time 4/4 R1 \time 3/4
    \mark\default d8\mf\<(-> c b) c(-> b a) d(-> c b) c(-> b a) g(-> f e) f(-> e d)
    d'4-.\f bf-. f-. \mark\default e8-.\p e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-.
    e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-.
    c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-.
    \alternative {
      \volta 1 {
        r4 g'16\mp\<( a b c a8-.) r b16( c d e c8-.) r d16( e f g
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        e8-.\fp) r a,16( e f gs a8-.) r a16( e f gs a8-.) r a16( e f gs a8-.\<) r
        b16( gs a b c8-.) r d16( b c d e8-.) r g16( e f g)


        \mark\default a4.(\f d, c b) a4-.-> r4 r R2. a'4.( d, c b) a4-.-> r4 r R2.*3
        b4.(\mp\< e d b) cs4.( fs e ds) e2.\fp\<~2.
        \mark\default a,8\fp r r e r4 g4-. r4 c8( b) bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-.
        a8\fp r r e r4 g4-. r4 c8( b) bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-.
        \mark\default a4-.->\fp r4 r R2.*5
        d8 c->( b) c->( b a) c->( b a) g->( f e) a r r a r4 a-.\< b-. a-. a16\f(b c8--) r a\p r4 a-. a-. a-.
        a8 r r a r4 a-.\< b-. a-. a16\f( c d8--) r a\p r4 a16\f( d e8--) r4 r
      }
      \volta 2 {
        r4 g,16\mp\<( a b c a8-.) r b16( c d e c8-.) r d16( e f g)
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4.\mf e->~2. g4(-> f d) e(-> c b) a4.( d c b)
        \mark\default r4 g16\mp\<( a b c a8-.) r b16( c d e c8-.) r d16( e f g)
        a4.(\mf d, c b a4-.) r4 r R2.*3 b4.(\f\< e-> d b)->
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default cs4.(\ff fs e gs) a,8\<-.->\fp\startTextSpan a-. a-. a-. a-. a-. b-.-> b-. b-. b-. b-. b-.
        c-.-> c-. c-. c-. c-. c-. g'-.->\ff g-. g-. gs-.-^ gs-.-^ gs-.-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  e,4\mf-.^\markup {\italic "quasi pizz."} e-. fs8-. g-. fs4-. r2 r4
  \once \override Hairpin.bound-padding = #0.25
  ds\p\< e\mf-. b8-. a-. b4-. r R1
  e4-. e-. fs8-. g-. a4-. r4 r8 g-. fs4-. b8.-. as16-. b4-. g8-. fs-. a4-. r R1 \mark\default
  e4->\p\> e e-> e e4->\p e8 ds~8 e->~8 ds e4-> e e-> e e4-> e e-> g
  e4-> e e-> e e4-> e e-> e8 ds e4-> b8-. a-. b4-. r e4->\p\> e e-> e \mark\default
  R1*15\! R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 g4-.->\mp g-. g-.-> g8-. \time 9/8 g4-.-> g4-. g4-.-> g8-. g4-.->
  \time 7/8 g4-.-> g-. g-.-> g8-. \time 9/8 g4-.-> g4-. g4-.-> g8-. g4-.-> \mark\default

  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b4-. b4-.-> b8-. b4-.->
  \time 7/8 c4-.-> c-. b-.-> b8-. \time 9/8 af4-.-> af4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 g4-.-> g4-. g4-.-> g8-. g4-.->
  \time 7/8 bf4-.-> bf-. c-.-> c8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \mark\default
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b4-. b4-.-> b8-. b4-.->
  \time 7/8 c4-.-> c-. b-.-> b8-. \time 9/8 af4-.-> af4-. a4-.-> a8-. g4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \mark\default

  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b8-. a4-.-> a8-. g4-.-> g8-.
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b8-. a4-.-> a8-. g4-.-> g8-.
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b8-. a4-.-> a8-. g4-.-> g8-.
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b8-. a4-.-> a8-. g4-.-> g8-.
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \mark\default
  \time 7/8 a4-. a-. b4.-. a4-. a-. gs4.-. a4-. a-. b4.-. \time 9/8 c-. b-. r
  \time 7/8 a4-. a-. b4.-. a4-. a-. gs4.-. a4-. a-. b4.-. \time 9/8 c-. b-. r
  \time 7/8 d4-.\< d-. e4.-. d4-. d-. cs4.-. d4-. d-. e4.-. \time 9/8 g-. a-. cs,-.

  \time 7/8 a4-.->\mp a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \mark\default
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b4-. b4-.-> b8-. b4-.->
  \time 7/8 c4-.-> c-. b-.-> b8-. \time 9/8 af4-.-> af4-. a4-.-> a8-. g4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->

  \mark\default
  \time 7/8 ef4-.-> ef-. ef-.-> ef8-. \time 9/8 f4-.-> f4-. f4-.-> f8-. f4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \time 2/4 r4 g4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  g8-.\f g-. g-. g-> r4 g-.-> af8-. af-. af-. af-> r4 af-.-> g8-. g-. g-. g-> r4 g-.->
  \tuplet 3/2 {bf4-. bf-. bf-.} \tuplet 3/2 {a-. a-. a-.}
  g8-. g-. g-. g-> r4 g-.-> af8-. af-. af-. af-> r4 af-.->
  \tuplet 3/2 {gf4-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. gf-.}
  \tuplet 3/2 {gf-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  R1*8 \mark\default

  c16\fp( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2 \mark\default

  R1*8 \mark\default

  g8.-.\f g16-.~8 g-.~16 g8.-. g4-. R1
  g8.-.\f g16-.~8 g-.~16 g8.-. g4-. R1
  af8.-.\f af16-.~8 af-.~16 af8.-. af4-. \mark\default R1*4 \mark\default

  g8-.\f g-. g-. g-> r4 g-.-> af8-. af-. af-. af-> r4 af-.-> g8-. g-. g-. g-> r4 g-.->
  \tuplet 3/2 {bf4-. bf-. bf-.} \tuplet 3/2 {a-. a-. a-.}
  g8-. g-. g-. g-> r4 g-.-> af8-. af-. af-. af-> r4 af-.->
  \tuplet 3/2 {gf4-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. gf-.}
  \tuplet 3/2 {gf-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  R1*4 \mark\default c4.\mf c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.

  g4-. r8 g16 g g8 g16 g g g g g g8-^ g-^ r g-^ g4-^ g8-^ g-^ g4-^ r r2  \fine
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
  e-. r e-. e-. e-. r e-.\< r fs-. g-. b-. e-. \mark\default e4.-.\! r4. R2.*13

  \relative c' {\greenPathPatternA  \greenPathPatternB}

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a,8\fp r r e r4 g4-. r4 c8->( b) e, r r e r4 d4-. r4 b'8 r a r r e r4 g4-. r4 c8->( b)
    e4-. r4 r R2. \time 4/4 R1 \time 3/4
    \mark\default d8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g->( f e) f->( e d)
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


        \mark\default a4.(\f d, c b) a4-.-> r4 r R2. a'4.( d, c b) a4-.-> r4 r R2.*3
        b,4.(\mp\< e d b) cs4.( fs e ds) e2.\fp\<~2.
        \mark\default a8\fp r r e r4 g4-. r4 c,8( b) bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-.
        a'8\fp r r e r4 g4-. r4 c,8( b) bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-. bf-.
        \mark\default a4-.->\fp r4 r R2.*5
        d8 c->( b) c->( b a) c->( b a) g->( f e) a r r a r4 a-.\< b-. a-. a16\f(b c8--) r a\p r4 a-. a-. a-.
        a8 r r a r4 a-.\< b-. a-. a16\f( c d8--) r a\p r4 a16\f( d e8--) r4 r
      }
      \volta 2 {
        r4 g16\mp\<( a b c a8-.) r b16( c d e c8-.) r d16( e f g)
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4.\mf e->~2. g4(-> f d) e(-> c b) a4.( d c b)
        \mark\default r4 g16\mp\<( a b c a8-.) r b16( c d e c8-.) r d16( e f g)
        a4.(\mf d, c b a4-.) r4 r R2.*3 b4.(\f\< e-> d b)->
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default cs4.(\ff fs e gs) a,8\<-.->\fp\startTextSpan a-. a-. a-. a-. a-. b-.-> b-. b-. b-. b-. b-.
        c-.-> c-. c-. c-. c-. c-. g'-.->\ff g-. g-. gs-.-^ gs-.-^ gs-.-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  e,4\mf-.^\markup {\italic "quasi pizz."} e-. fs8-. e-. fs4-. r2 r4
  \once \override Hairpin.bound-padding = #0.25
  b,\p\< e\mf-. b8-. a-. b4-. r R1
  e4-. e-. fs8-. e-. a4-. r4 r8 g-. fs4-. g8.-. fs16-. e4-. g8-. fs-. e4-. r R1 \mark\default
  e4->\p\> e e-> e e4->\p e8 ds~8 e->~8 ds e4-> e e-> e e4-> e e-> g
  e4-> e e-> e e4-> e e-> e8 ds e4-> b8-. a-. b4-. r e4->\p\> e e-> e \mark\default
  R1*15\! R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 d4-.->\mp d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.-> \mark\default

  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \mark\default

  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e8-. d4-.-> d8-. c4-.-> c8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d4-. d-. e4.-. d4-. d-. c4.-. d4-. d-. e4.-. \time 9/8 f-. e-. r
  \time 7/8 d4-. d-. e4.-. d4-. d-. c4.-. d4-. d-. e4.-. \time 9/8 f-. e-. r
  \time 7/8 d4-.\< d-. e4.-. d4-. d-. cs4.-. d4-. d-. e4.-. \time 9/8 g-. a-. a

  \time 7/8 d,4-.->\mp d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->

  \mark\default
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \time 2/4 r4 d4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  e8-.\f e-. e-. e-> r4 e-.-> ef8-. ef-. ef-. ef-> r4 ef-.-> ef8-. ef-. ef-. ef-> r4 ef-.->
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {c-. c-. c-.}
  e8-. e-. e-. e-> r4 e-.-> ef8-. ef-. ef-. ef-> r4 ef-.->
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {cs-. cs-. cs-.}
  \tuplet 3/2 {cs-. cs-. cs-.} \tuplet 3/2 {cs-. cs-. d-.} \mark\default

  R1*8 \mark\default

  R1 c'16\p( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf c4-.) r4 r2
  c16( bf g bf c bf g bf c bf g bf c bf g bf) \mark\default

  R1*8 \mark\default

  ef,8.-.\f ef16-.~8 ef-.~16 ef8.-. ef4-. R1
  ef8.-. ef16-.~8 ef-.~16 ef8.-. ef4-. R1
  ef8.-. ef16-.~8 ef-.~16 ef8.-. ef4-. \mark\default R1*4 \mark\default

  e8-.\f e-. e-. e-> r4 e-.-> ef8-. ef-. ef-. ef-> r4 ef-.-> ef8-. ef-. ef-. ef-> r4 ef-.->
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {c-. c-. c-.}
  e8-. e-. e-. e-> r4 e-.-> ef8-. ef-. ef-. ef-> r4 ef-.->
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {cs-. cs-. cs-.}
  \tuplet 3/2 {cs-. cs-. cs-.} \tuplet 3/2 {cs-. cs-. d-.} \mark\default

  R1*4 \mark\default c'4.\mf c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.

  g4-. r8 g16 g g8 g16 g g g g g g8-^ g-^ r g-^ g4-^ g8-^ g-^ g4-^ r r2  \fine
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

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a8\fp-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-.
    a-.-> a-. a-. a-.-> a-. a-. f-.-> f-. f-. f-. g-.-> r
    a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-.
    a-.->\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-. g-.-> g-.
    \time 4/4 f-.-> f-. f-. f-. f-.-> f-. f-. f-. \time 3/4
    \mark\default d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-.
    bf-.-> bf-. bf-. bf-.-> bf-. bf-. bf2.\f\>
    \mark\default e8-.\p e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-.
    e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-.
    c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-.

    \alternative {
      \volta 1 {
        a-.\< a-. a-. a-. a-. a-. b-. b-. b-. b-. b-. b-.
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4-.\f r4 r r8 e''16 e e4( c) a\< a8 b~8 b c->( b) e->( f) g->( af)
        \mark\default a?->-.\fp\< a,-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-. e4-.->\f r4 r R2.
        a8->-.\fp\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-. e4-.->\f r4 r R2.
        fs8-.->\< fs-. fs-. fs-.-> fs-. fs-. f?-.-> f-. f-. f-.-> f-. f-.
        gs-.-> gs-. gs-. gs-.-> gs-. gs-. g?-.-> g-. g-. g-.-> g-. g-.
        bf-.-> bf-. bf-. bf-.-> bf-. bf-. a-.-> a-. a-. a-.-> a-. a-.
        f-.->\fp\< f-. f-. f-.-> f-. f-. f-.-> f-. f-. f-.-> f-. f-.
        \mark\default a-.->\fp a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. bf4.\< bf4. bf4.\f\> bf4.
        a8-.->\p a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. bf4.\< bf4. bf4.\f\> bf4.
        \mark\default a8-.->\p a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-.
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
        a'-.->\< a-. a-. a-. a-. a-. g-. g-. g-. g-. g-. g-.
        \mark\default e4-.\fp r4 r R2. a8-.->\< a-. a-. a-. a-. a-. g-. g-. g-. g-. g-. g-. e4-.\fp r4 r R2.
        fs8-.->\<\p fs-. fs-. fs-.-> fs-. fs-. f?-.->\mf\> f-. f-. f-.-> f-. f-.
        gs-.->\mp\< gs-. gs-. gs-.-> gs-. gs-. g?-.->\f\> g-. g-. g-.-> g-. g-.
        \mark\default bf-.->\mf\< bf-. bf-. bf-.-> bf-. bf-. a-.->\ff\> a-. a-. a-.-> a-. a-.
        \override TextSpanner.bound-details.left.text = "rall."
        f2.\fp\<\startTextSpan ~2.~2.~2.\ff R2.\fermata \stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  R1*8 \mark\default
  R1*8 \mark\default
  R1*15 R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 d4-.->\mp d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.-> \mark\default

  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \mark\default

  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e8-. d4-.-> d8-. c4-.-> c8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d4-. d-. e4.-. d4-. d-. c4.-. d4-. d-. e4.-. \time 9/8 f-. e-. r
  \time 7/8 d4-. d-. e4.-. d4-. d-. c4.-. d4-. d-. e4.-. \time 9/8 f-. e-. r
  \time 7/8 d4-.\< d-. e4.-. d4-. d-. cs4.-. d4-. d-. e4.-. \time 9/8 g-. a-. e-.

  \time 7/8 d4-.->\mp d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->

  \mark\default
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \time 2/4 r4 d4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  c8-.\f \repeat unfold 23 {c8-.} \tuplet 3/2 {f,4-. f'-. f,-.} \tuplet 3/2 {f-. f'-. f,-.}
  \repeat unfold 16 {c'8-.} \tuplet 3/2 {gf4-. gf'-. gf,-.} \tuplet 3/2 {gf-. gf'-. gf,-.}
  \tuplet 3/2 {ef4-. ef'-. ef,-.} \tuplet 3/2 {ef-. ef'-. g,-.} \mark\default

  R1*8 \mark\default

  R1*8 \mark\default

  R1*4 c4.\f c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-. \mark\default

  c4-.\ff c-. c-. c-. af'8-.\mf\< g-. f-. ef-. f-. ef-. d-. df-.
  c4-.\ff c-. c-. c-.
  ef8-.\mf\< df-. cf-. bf-. df-. cf-. bf-. a-.
  af4-.\ff af-. af-. af-. \mark\default R1*4 \mark\default

  c8-.\f \repeat unfold 23 {c8-.} \tuplet 3/2 {f,4-. f'-. f,-.} \tuplet 3/2 {f-. f'-. f,-.}
  \repeat unfold 16 {c'8-.} \tuplet 3/2 {gf4-. gf'-. gf,-.} \tuplet 3/2 {gf-. gf'-. gf,-.}
  \tuplet 3/2 {ef4-. ef'-. ef,-.} \tuplet 3/2 {ef-. ef'-. g,-.} \mark\default

  R1*4 \mark\default c'4-.-^\ff c-.-^ c-.-^ c-.-^ c8-.-^ c-.-^ r c-.-^ c4-.-^ c8-.-^ c-.-^
  c4-.-^ c-.-^ c-.-^ c-.-^ af8-.-^ af-.-^ r f-.-^ f4-.-^ f8-.-^ f-.-^

  c4-. r8 c16 c c8 c16 c c c c c g'8-^ g-^ r g-^ g4-^ g8-^ g-^ c4-^ r r2 \fine
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
    b-. r b-. e,-. b'-. r b-.\< r b-. g-. b-. e-. \mark\default e4.-.\! r4.
  }
  R2.*13
  {
    r4. r8 g,4\ff a4. c \mark\default b2.~4.~8 e4 b2. e d4. cs d b
    \override TextSpanner.bound-details.left.text = "poco rit." a2.\startTextSpan a4. c\stopTextSpan
  }

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    e,8\fp-.-> e-. e-. e-.-> e-. e-. g4-.-> r4 r e8-.-> e-. e-. e-.-> e-. e-. d4-.-> r4 r
    e8-.-> e-. e-. e-.-> e-. e-. g4-.-> r4 r e4-. r4 r R2. \time 4/4 R1 \time 3/4
    \mark\default d8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g->( f e) f->( e d)
    \tuplet 3/2 {d'-.->\f c-. bf-.} \tuplet 3/2 {bf-.-> a-. g-.} \tuplet 3/2 {f'-.-> e-. d-.}
    \mark\default a4-.-> r r R2.*5

    \alternative {
      \volta 1 {
        r4 g16\mp\<( a b c a8-.) r b16( c d e c8-.) r d16( e f g
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        e8-.\fp) r a,16( e f gs a8-.) r a16( e f gs a8-.) r a16( e f gs a8-.\<) r
        b16( gs a b c8-.) r d16( b c d e8-.) r g16( e f g)
        \mark\default a4.(\f d c b) a4-> r4 r R2. a4.( d c b) a4-> r4 r R2.
        a,4.(\p\< d c b) b( e d b) cs( fs e ds)
        a8-.->\fp\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-.
        \mark\default a'\fp-.-> e-. e-. e-.-> e-. e-. g4-.-> r4 r
        e8\<-> e e e-> e e e-> e e e-> e e
        a8\fp-.-> e-. e-. e-.-> e-. e-. g4-.-> r4 r
        e8\<-> e e e-> e e e-> e e e-> e e
        \mark\default a,\fp c->( b a b c) a c->( b a b c) d c->( b) c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) f e->( d) e->( d c) e->( d c) b->( a gs)
        a c->( b a b c) a c->( b a b c) d-> r r c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) d4-> r4 r e4-> r4 r
      }
      \volta 2 {
        r4 g,16\mp\<( a b c a8-.) r b16( c d e c8-.) r d16( e f g)
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4.\mf e->~2. g4(-> f d) e(-> c b) a4.( d c b)
        \mark\default r4 g16\mp\<( a b c a8-.) r b16( c d e c8-.) r d,16( e f g)
        a4.(\mf d c b a4-.) r4 r R2. a4.(\mf\< d-> c b)->\f R2.*2
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default cs4.\ff( fs e gs) a,8\<-.->\fp\startTextSpan a-. a-. a-. a-. a-. b-.-> b-. b-. b-. b-. b-.
        c-.-> c-. c-. c-. c-. c-. g'-.->\ff g-. g-. gs-.-^ gs-.-^ gs-.-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1 g\mp\>~1 e1 \mark\default
  R1*2\! r2 a\p( b4. cs8 d2~2) r e1\>~1~1 \mark\default
  R1*8\! \mark\default
  R1*15 R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 d,4-.->\mp d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.-> \mark\default

  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \mark\default

  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e8-. d4-.-> d8-. c4-.-> c8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d8\f-. a-. d-. a-. e'-. f-. e-. d-. a-. d-. a-. c-. d-. e-. d-. a-. d-. a-. e'-. f-. e-.
  \time 3,3,3 9/8 f-. e-. d-. e-. d-. c-. d-. c-. d-.
  \time 7/8 d4-.\mp d-. e4.-. d4-. d-. c4.-. d4-. d-. e4.-. \time 9/8 f-. e-. r
  \time 7/8 d4-.\< d-. e4.-. d4-. d-. cs4.-. d4-. d-. e4.-. \time 9/8 g-. a-. cs,-.

  \time 7/8 d4-.->\mp d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->

  \mark\default
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \time 2/4 r4 d4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  c8-.\f c-. c-. c-> r4 c-.-> \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 3/2 {bf4-. bf-. bf-.} \tuplet 3/2 {a-. a-. a-.} \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {df-. df-. df-.}
  \tuplet 3/2 {ef-. ef-. ef-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  R1*7 r2 \tuplet 6/4 {b,16\f\<( c cs d ds e} \tuplet 6/4 {fs g gs a as b}
  \mark\default c4)->\ff r4 r2 R1*7 \mark\default

  c,4.\p c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} g8-. g-. r g-. g4-. g8-. g-.
  c,4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} af'8-. af-. r bf-. bf4-. a8-. a-.
  c4.\f c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-. \mark\default

  g,8.-.\f g16-.~8 g-.~16 g8.-. g4-.
  \tuplet 6/4 {af'16( bf af g af g} \tuplet 6/4 {f g f ef f ef}
  \tuplet 6/4 {f g f ef f ef} \tuplet 6/4 {d ef d cs d cs)}
  g8.-. g16-.~8 g-.~16 g8.-. g4-.
  \tuplet 6/4 {ef'16( ff ef df ef df} \tuplet 6/4 {cf df cf bf cf bf}
  \tuplet 6/4 {df ef df cf df cf} \tuplet 6/4 {bf cf bf a bf a)}
  ef8.-. ef16-.~8 ef-.~16 ef8.-. ef4-. \mark\default R1*4 \mark\default

  c'8-.\f c-. c-. c-> r4 c-.-> \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 3/2 {bf4-. bf-. bf-.} \tuplet 3/2 {a-. a-. a-.} \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {df-. df-. df-.}
  \tuplet 3/2 {ef-. ef-. ef-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  R1*4 \mark\default c,4.\mf c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c4-. r
  \tuplet 6/4 {b16\f\<( c cs d ds e} \tuplet 6/4 {fs g gs a as b}

  c4-^)\ff r8 c16 c c8 c16 c c c c c c8-^ c-^ r c-^ c4-^ c8-^ c-^ c4-^ r r2 \fine
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
    e-. r e-. e-. e-. r e-.\< r fs-. g-. b-. e-. \mark\default e4.-.\!  r4. R2.*15
  }
  \mark\default fs,2.\ff~4. \tuplet 2/3 {g8 a} fs4.~8 b,4 cs2. e2.~4. \tuplet 2/3 {fs8 g}
  \override TextSpanner.bound-details.left.text = "poco rit." e2.\startTextSpan\< c4. a\stopTextSpan

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    e'8\fp-.-> e-. e-. e-.-> e-. e-. g4-.-> r4 r e8-.-> e-. e-. e-.-> e-. e-. d4-.-> r4 r
    e8-.-> e-. e-. e-.-> e-. e-. g4-.-> r4 r e4-. r4 r R2. \time 4/4 R1 \time 3/4
    \mark\default d8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g->( f e) f->( e d)
    bf'2.\> \mark\default a4\p-.-> r r R2.*5

    \alternative {
      \volta 1 {
        f16\mp\<( g a b g8-.) r a16( b c d b8-.) r c16( d e f d8-.) r
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a16\fp( e f gs a8-.) r a16( e f gs a8-.) r a16( e f gs a8-.) r
        a16\<( f gs a b8-.) r c16( a b c d8-.) r e16( d e f g8-.) r
        \mark\default a4.(\f d c b) a4-.-> r4 r R2. a4.( d c b) a4-.-> r4 r R2.
        a,4.(\p\< d c b) b( e d b) cs( fs e ds)
        a8-.->\fp\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-.
        \mark\default a'\fp-.-> e-. e-. e-.-> e-. e-. g4-.-> r4 r
        e8\<-> e e e-> e e e-> e e e-> e e
        a8\fp-.-> e-. e-. e-.-> e-. e-. g4-.-> r4 r
        e8\<-> e e e-> e e e-> e e e-> e e
        \mark\default a,\fp c->( b a b c) a c->( b a b c) d c->( b) c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) f e->( d) e->( d c) e->( d c) b->( a gs)
        a c->( b a b c) a c->( b a b c) d-> r r c->( b a) c->( b a) b->( a gs)
        a c->( b a b c) a c->( b a b c) d4-.-> r4 r e4-.-> r4 r
      }
      \volta 2 {
        f,16\mp\<( g a b g8-.) r a16( b c d b8-.) r c16( d e f d8-.) r
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a'4.\mf e->~2. g4(-> f d) e(-> c b) a4.( d c b)
        \mark\default f16\mp\<( g a b g8-.) r a16( b c d b8-.) r c16( d e f d8-.) r
        a4.(\mf d c b a4-.) r4 r R2.*3 b4.(\f\< e-> d b)->
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default cs,4.(\ff fs e gs) a8\<-.->\fp\startTextSpan a-. a-. a-. a-. a-. b-.-> b-. b-. b-. b-. b-.
        c-.-> c-. c-. c-. c-. c-. c-.->\ff c-. c-. c-.-^ c-.-^ c-.-^ r2\fermata\stopTextSpan e4~ \pp\<
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  1~1\>~1 R1\! \mark\default
  R1*2 r2 b'2\p~1~2 r4 b\p\>~1~1~1 \mark\default
  R1*8\! \mark\default
  R1*15 R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 a,4-.->\mp a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.-> \mark\default

  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b4-. b4-.-> b8-. b4-.->
  \time 7/8 c4-.-> c-. b-.-> b8-. \time 9/8 af4-.-> af4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 g4-.-> g4-. g4-.-> g8-. g4-.->
  \time 7/8 bf4-.-> bf-. c-.-> c8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \mark\default
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b4-. b4-.-> b8-. b4-.->
  \time 7/8 c4-.-> c-. b-.-> b8-. \time 9/8 af4-.-> af4-. a4-.-> a8-. g4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \mark\default

  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b8-. a4-.-> a8-. g4-.-> g8-.
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b8-. a4-.-> a8-. g4-.-> g8-.
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b8-. a4-.-> a8-. g4-.-> g8-.
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b8-. a4-.-> a8-. g4-.-> g8-.
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \mark\default
  \time 7/8 a4-. a-. b4.-. a4-. a-. gs4.-. a4-. a-. b4.-. \time 9/8 c-. b-. r
  \time 7/8 a4-. a-. b4.-. a4-. a-. gs4.-. a4-. a-. b4.-. \time 9/8 c-. b-. r
  \time 7/8 a4-.\< a-. b4.-. a4-. a-. gs4.-. a4-. a-. b4.-. \time 9/8 e-. d-. cs-.

  \time 7/8 a4-.->\mp a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \mark\default
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b4-. b4-.-> b8-. b4-.->
  \time 7/8 c4-.-> c-. b-.-> b8-. \time 9/8 af4-.-> af4-. a4-.-> a8-. g4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->

  \mark\default
  \time 7/8 ef4-.-> ef-. ef-.-> ef8-. \time 9/8 f4-.-> f4-. f4-.-> f8-. f4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \time 2/4 r4 a4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  g8-.\f g-. g-. g-> r4 g-.-> af8-. af-. af-. af-> r4 af-.-> g8-. g-. g-. g-> r4 g-.->
  \tuplet 3/2 {f4-. f-. f-.} \tuplet 3/2 {f-. f-. f-.}
  g8-. g-. g-. g-> r4 g-.-> af8-. af-. af-. af-> r4 af-.->
  \tuplet 3/2 {gf4-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. gf-.}
  \tuplet 3/2 {gf-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  R1*8 \mark\default R1*8 \mark\default

  c4.\p c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} ef8-. ef-. r ef-. ef4-. ef8-. ef-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} ef8-. ef-. r f-. f4-. f8-. f-.
  c4.\f c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-. \mark\default

  c8.-.\f c16-.~8 c-.~16 c8.-. c4-.
  \tuplet 6/4 {af'16( bf af g af g} \tuplet 6/4 {f g f ef f ef}
  \tuplet 6/4 {f g f ef f ef} \tuplet 6/4 {d ef d cs d cs)}
  c?8.-. c16-.~8 c-.~16 c8.-. c4-.
  \tuplet 6/4 {ef16( ff ef df ef df} \tuplet 6/4 {cf df cf bf cf bf}
  \tuplet 6/4 {df ef df cf df cf} \tuplet 6/4 {bf cf bf a bf a)}
  af8.-. af16-.~8 af-.~16 af8.-. af4-. \mark\default R1*4 \mark\default

  g8-.\f g-. g-. g-> r4 g-.-> af8-. af-. af-. af-> r4 af-.-> g8-. g-. g-. g-> r4 g-.->
  \tuplet 3/2 {f4-. f-. f-.} \tuplet 3/2 {f-. f-. f-.}
  g8-. g-. g-. g-> r4 g-.-> af8-. af-. af-. af-> r4 af-.->
  \tuplet 3/2 {gf4-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. gf-.}
  \tuplet 3/2 {gf-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  R1*4 \mark\default c4.\mf c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.

  c4-. r8 c16 c c8 c16 c c c c c g8-^ g-^ r g-^ g4-^ c8-^ c-^ c4-^ r r2 \fine
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

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a8\fp r r e r4 g4-. r4 c8->( b) e, r r e r4 d4-. r4 b'8 r a r r e r4 g4-. r4 c8->( b)
    a-.->\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-. g-.-> g-.
    \time 4/4 f-.-> f-. f-. f-. f-.-> f-. f-. f-. \time 3/4
    \mark\default d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-.
    g->( f e) f->( e d) bf'2.\> \mark\default e4\p-.-> r r
    g8->\mf( f d e) c->( b) c4-.-> r4 r R2.*2 e8(->\mf d b c) a(-> b)

    \alternative {
      \volta 1 {
        a4-.-> r4 r R2. \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4.\f e'->~2. g4(->\< f d) e( c b)
        \mark\default a8-.->\fp\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-. e4-.->\f r4 r R2.
        a8-.->\fp\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-. e4-.->\f r4 r R2.*3
        b4.(\mp\< e d b) cs4.( fs e ds) e2.\fp\<~2. \mark\default a8\fp r r e r4 g4-. r4 c8( b) bf2.\<~2.\f\>
        a8\p r r e r4 g4-. r4 c8( b) bf2.\<~2.\f\> \mark\default a4-.->\p r4 r R2.*5
        d8 c->( b) c->( b a) c->( b a) g->( f e) e r r a r4 a-.\< b-. a-. a16\f(b c8--) r a\p r4 a-. a-. a-.
        a8 r r a r4 a-.\< b-. a-. a16\f( c d8--) r a\p r4 a16\f( d e8--) r4 r
      }
      \volta 2 {
        a4-.-> r4 r R2.*2 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        g8-.->\mf f-. d-. e-. c-.-> b-. g4(-> f d) e(-> c b) a4.( d c b)
        \mark\default a4-.-> r4 r R2.*5 a4.(\mf\< d-> c b)-> b4.( e-> d b)->
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default cs4.(\ff fs e gs) a8\<-.->\fp\startTextSpan a-. a-. a-. a-. a-. b-.-> b-. b-. b-. b-. b-.
        c-.-> c-. c-. c-. c-. c-. g'-.->\ff g-. g-. gs-.-^ gs-.-^ gs-.-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1 e1\p\> R1*1\! cs1\p\> \mark\default
  R1*2\! r2 e\p~1~2 r R1*3 \mark\default
  R1*8 \mark\default
  R1*15 R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 g,4-.->\mp g-. g-.-> g8-. \time 9/8 g4-.-> g4-. g4-.-> g8-. g4-.->
  \time 7/8 g4-.-> g-. g-.-> g8-. \time 9/8 g4-.-> g4-. g4-.-> g8-. g4-.-> \mark\default

  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.-> \mark\default

  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e8-. d4-.-> d8-. c4-.-> c8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d4-. d-. e4.-. d4-. d-. c4.-. d4-. d-. e4.-. \time 9/8 f-. e-. r
  \time 7/8 d4-. d-. e4.-. d4-. d-. c4.-. d4-. d-. e4.-. \time 9/8 f-. e-. r
  \time 7/8 d4-.\< d-. e4.-. d4-. d-. cs4.-. d4-. d-. e4.-. \time 9/8 g-. a-. a-.

  \time 7/8 a4-.->\mp a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \mark\default
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->

  \mark\default
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \time 2/4 r4 d4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  e8-.\f e-. e-. e-> r4 e-.-> ef8-. ef-. ef-. ef-> r4 ef-.-> ef8-. ef-. ef-. ef-> r4 ef-.->
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {c-. c-. c-.}
  e8-.\f e-. e-. e-> r4 e-.-> ef8-. ef-. ef-. ef-> r4 ef-.->
  \tuplet 3/2 {cs4-. cs-. cs-.} \tuplet 3/2 {cs-. cs-. cs-.}
  \tuplet 3/2 {cs-. cs-. cs-.} \tuplet 3/2 {cs-. cs-. d-.} \mark\default

  R1*7 \tuplet 6/4 {b,16\mf\<( c cs d ds e}
  \tuplet 6/4 {fs g gs a as b)} r2\f \mark\default

  c4\f-. c8-. c-. c4-. c8-. c-. \repeat unfold 2 {af4-. af8-. af-.}
  \repeat unfold 2 {d4-. d8-. d-.} \repeat unfold 2 {f,4-. f8-. f-.}
  \repeat unfold 2 {c'4-. c8-. c-.} \repeat unfold 2 {f,4-. f8-. f-.}
  \repeat unfold 2 {ef4-. ef8-. ef-.} \repeat unfold 2 {g4-. g8-. g-.} \mark\default

  R1*4 c4-.\f c-. c-. c-. c8-. c-. r c-. c4-. c8-. c-.
  c4-. c-. c-. c-. af8-. af-. r f-. f4-. f8-. f-. \mark\default

  c'4-.\ff c-. c-. c-. af'8-.\mf\< g-. f-. ef-. f-. ef-. d-. df-.
  c4-.\ff c-. c-. c-.
  ef8-.\mf\< df-. cf-. bf-. df-. cf-. bf-. a-.
  af4-.\ff af-. af-. af-. \mark\default R1*4 \mark\default

  e8-.\f e-. e-. e-> r4 e-.-> ef8-. ef-. ef-. ef-> r4 ef-.-> ef8-. ef-. ef-. ef-> r4 ef-.->
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {c-. c-. c-.}
  e8-.\f e-. e-. e-> r4 e-.-> ef8-. ef-. ef-. ef-> r4 ef-.->
  \tuplet 3/2 {cs4-. cs-. cs-.} \tuplet 3/2 {cs-. cs-. cs-.}
  \tuplet 3/2 {cs-. cs-. cs-.} \tuplet 3/2 {cs-. cs-. d-.} \mark\default

  R1*4 \mark\default c'4-.-^\ff c-.-^ c-.-^ c-.-^ c8-.-^ c-.-^ r c-.-^ c4-.-^ c8-.-^ c-.-^
  c4-.-^ c-.-^ c-.-^ c-.-^ \tuplet 6/4 {b,16\mf\<( c cs d ds e}
  \tuplet 6/4 {fs g gs a as b)} r2\f

  r2 g\ff\< g8-^\ff g-^ r g-^ g4-^ c8-^ c-^ c4-^ r r2 \fine
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

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a8\fp-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-.
    a-.-> a-. a-. a-.-> a-. a-. f-.-> f-. f-. f-. g-.-> r
    a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-.
    a-.->\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-. g-.-> g-.
    \time 4/4 f-.-> f-. f-. f-. f-.-> f-. f-. f-. \time 3/4
    \mark\default d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. bf-.-> bf-. bf-. bf-.-> bf-. bf-. bf2.\f\>
    \mark\default e8-.\p e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-.
    e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-.
    c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-.

    \alternative {
      \volta 1 {
        a-.\< a-. a-. a-. a-. a-. b-. b-. b-. b-. b-. b-.
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4-.\f r4 r r8 e'16 e e4 c a\< a8 b~8 b c->( b) e->( f) g->( af)
        \mark\default a?->-.\fp\< a,-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-. e4-.->\f r4 r R2.
        a8->-.\fp\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-. e4-.->\f r4 r R2.
        fs8-.->\< fs-. fs-. fs-.-> fs-. fs-. f?-.-> f-. f-. f-.-> f-. f-.
        gs-.-> gs-. gs-. gs-.-> gs-. gs-. g?-.-> g-. g-. g-.-> g-. g-.
        bf-.-> bf-. bf-. bf-.-> bf-. bf-. a-.-> a-. a-. a-.-> a-. a-.
        f-.->\fp\< f-. f-. f-.-> f-. f-. f-.-> f-. f-. f-.-> f-. f-.
        \mark\default a-.->\fp a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. bf4.\< bf4. bf4.\f\> bf4.
        a8-.->\p a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. bf4.\< bf4. bf4.\f\> bf4.
        \mark\default a'8-.->\p a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-.
        a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-.
        a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-. a-.
        a-. a-. a-. a-. a-. a-. b-.-> b-. a-.-> a-. g-.-> g-.
        f-.-> f-. r f-. f-. f-. f-. f-. r f-. f-. f-.
        f-. f-. r f-. f-. f-. f-. f-. r f-. d-.\< d-.
        d2\f\> e8-.\p\< e-. e2\f d8-.\> d-. a-.\p\< a-. b-. b-. c-. c-. b-. b-. c-. c-. d-. d-.
      }
      \volta 2 {

        a-.\< a-. a-. a-. a-. a-. b-. b-. b-. b-. b-. b-.
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a-.->\mf a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-. a-.
        ef'-.-> ef-. ef-. ef-.-> ef-. ef-. d-.-> d-. d-. d-. d-. d-.
        a'-.->\< a-. a-. a-. a-. a-. g-. g-. g-. g-. g-. g-.
        \mark\default e4-.\fp r4 r R2. a8-.->\< a-. a-. a-. a-. a-. g-. g-. g-. g-. g-. g-. e4-.\fp r4 r R2.
        fs8-.->\<\p fs-. fs-. fs-.-> fs-. fs-. f?-.->\mf\> f-. f-. f-.-> f-. f-.
        gs-.->\mp\< gs-. gs-. gs-.-> gs-. gs-. g?-.->\f\> g-. g-. g-.-> g-. g-.
        \mark\default bf-.->\mf\< bf-. bf-. bf-.-> bf-. bf-. a-.->\ff\> a-. a-. a-.-> a-. a-.
        \override TextSpanner.bound-details.left.text = "rall."
        f2.\fp\<\startTextSpan ~2.~2.~2.\ff R2.\fermata \stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  R1*2 r2 b\p~1~2 r R1*3 \mark\default
  R1*8 \mark\default
  R1*15 R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 d,4-.->\mp d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.-> \mark\default

  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \mark\default

  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d8-. d4-.-> d8-. d4-.-> d8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e8-. d4-.-> d8-. c4-.-> c8-.
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d4-. d-. e4.-. d4-. d-. c4.-. d4-. d-. e4.-. \time 9/8 f-. e-. r
  \time 7/8 d4-. d-. e4.-. d4-. d-. c4.-. d4-. d-. e4.-. \time 9/8 f-. e-. r
  \time 7/8 d4-.\< d-. e4.-. d4-. d-. cs4.-. d4-. d-. e4.-. \time 9/8 g-. a-. e-.

  \time 7/8 d4-.->\mp d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \mark\default
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->

  \mark\default
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 bf4-.-> bf-. bf-.-> bf8-. \time 9/8 c4-.-> c4-. c4-.-> c8-. c4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> d4-. d4-.-> d8-. d4-.->

  \time 2/4 r4 d4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  c8-.\f \repeat unfold 23 {c8-.} \tuplet 3/2 {f,4-. f'-. f,-.} \tuplet 3/2 {f-. f'-. f,-.}
  \repeat unfold 16 {c'8-.} \tuplet 3/2 {gf4-. gf'-. gf,-.} \tuplet 3/2 {gf-. gf'-. gf,-.}
  \tuplet 3/2 {ef4-. ef'-. ef,-.} \tuplet 3/2 {ef-. ef'-. g,-.} \mark\default

  R1*8 \mark\default

  c4\f-. c8-. c-. c4-. c8-. c-. \repeat unfold 2 {af4-. af8-. af-.}
  \repeat unfold 2 {d4-. d8-. d-.} \repeat unfold 2 {f,4-. f8-. f-.}
  \repeat unfold 2 {c'4-. c8-. c-.} \repeat unfold 2 {f,4-. f8-. f-.}
  \repeat unfold 2 {ef4-. ef8-. ef-.} \repeat unfold 2 {g4-. g8-. g-.} \mark\default

  R1*4 c4-.\f c-. c-. c-. c8-. c-. r c-. c4-. c8-. c-.
  c4-. c-. c-. c-. af8-. af-. r f-. f4-. f8-. f-. \mark\default

  c'4-.\ff c-. c-. c-. af'8-.\mf\< g-. f-. ef-. f-. ef-. d-. df-.
  c4-.\ff c-. c-. c-.
  ef8-.\mf\< df-. cf-. bf-. df-. cf-. bf-. a-.
  af4-.\ff af-. af-. af-. \mark\default R1*4 \mark\default

  c8-.\f \repeat unfold 23 {c8-.} \tuplet 3/2 {f,4-. f'-. f,-.} \tuplet 3/2 {f-. f'-. f,-.}
  \repeat unfold 16 {c'8-.} \tuplet 3/2 {gf4-. gf'-. gf,-.} \tuplet 3/2 {gf-. gf'-. gf,-.}
  \tuplet 3/2 {ef4-. ef'-. ef,-.} \tuplet 3/2 {ef-. ef'-. g,-.} \mark\default

  R1*4 \mark\default c'4-.-^\ff c-.-^ c-.-^ c-.-^ c8-.-^ c-.-^ r c-.-^ c4-.-^ c8-.-^ c-.-^
  c4-.-^ c-.-^ c-.-^ c-.-^ af8-.-^ af-.-^ r f-.-^ f4-.-^ f8-.-^ f-.-^

  c1 c8-^ c-^ r c-^ c4-^ c8-^ c-^ c4-^ r r2 \fine
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
    a2.\startTextSpan \< a'4. c\stopTextSpan
  }

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2
  {
    a'4\fp-.-> r4 r R2.*2 r2
    \once \override Hairpin.bound-padding = #0.25
    b,4\p\< e4\fp-.-> r4 r R2.*3 \time 4/4 R1 \time 3/4 \mark\default R2.*3
    \tuplet 3/2 {d8-.->\f c-. bf-.} \tuplet 3/2 {bf-.-> a-. g-.} \tuplet 3/2 {f-.-> e-. d-.}
    \mark\default a4-.-> r r R2.*5

    \alternative {
      \volta 1 {
        d'4.\p\< d, e' e, \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a,\f e'->~2. g4(->\< f d) e( c b) \mark\default a4->-.\! r4 r R2.
        e''8\ff e-. r e-. r4 ef8 ef-. r ef-. r4 R2.*2 e8\ff e-. r e-. r4 ef8 ef-. r ef-. r4 R2.*4
        cs4.(\mf\< fs e ds) e2.\fp\<~2. \mark\default a4-.->\fp r4 r R2.
        bf,2.\<~2.\f\> a4-.\p r4 r R2. bf,2.\<~2.\f\> \mark\default a4-.\p r4 r
        R2.*2 r4 r8 a'16-.\ff a-. a-. a-. a-. a-. a4-. r4 r R2.*2
        b16-. b-. b-. b-. a-. a-. a-. a-. g-. g-. g-. g-.
        f4-. r4 r R2.*2 r4 r8 a16-. a-. a-. a-. a-. a-. a4-. r8b16-. b-. b-. b-. b-. b-. b4-. r8
        a16-.\> a-. a-. a-. a-. a-. a-.\p\< a-. a-. a-. b-. b-. b-. b-. c-. c-. c-. c-.
        b-. b-. b-. b-. c-. c-. c-. c-. e-. e-. gs-. gs-.
      }
      \volta 2 {
        R2.*8\! \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        \mark\default a,4.(\f d c b) R2.*2 a4.( d c b) R2.*4
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default cs,4.(\ff fs e gs) a8\<-.->\fp\startTextSpan a-. a-. a-. a-. a-. b-.-> b-. b-. b-. b-. b-.
        c-.-> c-. c-. c-. c-. c-. g'-.->\ff g-. g-. gs-.-^ gs-.-^ gs-.-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  R1*8 \mark\default
  R1*8 \mark\default
  R1*4 r2 b,2\pp\<~1\> R1\! r2 e,2\pp\<~1\> R1*6\! R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 d'4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 a4(\ff d) d4.->~ \time 9/8 2\> r4.\! r4 \time 7/8 r4. a8\f b(-> c b) \time 9/8 a2->\> r4.\! r4
  \time 7/8 g4(\ff d') c4.\> \time 9/8 R1*9/8\!
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \time 7/8 a4-.->\mf a-. a-.-> a8-. \time 9/8 a4-.-> r r4. r4
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> r r4. r4

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 r2 a4.\f\<~4

  \mark\default
  \time 7/8 a4\ff-. r r4. R1*7/8*2 \time 9/8 R1*9/8
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 d,4\f-. d-. e8-. f-. e-. d4-. d-. cs8-. d-. e-. d4-. d-. e8-. f-. e-.
  \time 3,3,3 9/8 g-. a-. g-. a-. b-. a-. b-. c-. cs-.

  \time 7/8 d4\ff -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 a4(\ff d) d4.->~ \time 9/8 2\> r4.\! r4 \time 7/8 r4. a8\f b(-> c b) \time 9/8 a2->\> r4.\! r4
  \time 7/8 g4(\ff d') c4.\> \time 9/8 R1*9/8\!

  \mark\default
  \time 7/8 g4(\ff d') c4. \time 9/8 bf4 a4 g4 a8 f4->
  \time 7/8 d'4(\ff a') g4. \time 9/8 f4 e4 d4 e8 c4->
  \time 7/8 d2..\> \time 9/8 R1*9/8\!

  \time 2/4 r4 a'4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  R1*8 \mark\default

  c,4.\ff c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-. \mark\default

  R1*8 \mark\default

  c4.\p c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-. c4-. r r2 R1*3 \mark\default

  g'8.-.\f g16-.~8 g-.~16 g8.-. g4-. R1
  g8.-. g16-.~8 g-.~16 g8.-. g4-. R1
  af8.-. af16-.~8 af-.~16 af8.-. af4-. \mark\default R1*4 \mark\default

  R1*8 \mark\default

  c,4.\ff c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-. \mark\default
  c4.\fff c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.

  c4-. r8 c16 c c8 c16 c c c c c g'8-^ g-^ r g-^ g4-^ c8-^ c16-^ c-^ c4-^ r r2 \fine
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
    e'16->\<^\markup{\italic "stagger breathing"}
    b-. a-. e'-> b-. a-. e'-> b-. a-. e'-> b-. a-.
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

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2
  {
    a4\fp-.-> r4 r R2.*2 r2
    \once \override Hairpin.bound-padding = #0.25
    b4\p\< a4\fp-.-> r4 r R2.*3 \time 4/4 R1 \time 3/4 \mark\default R2.*3
    d4-.\f bf-. f-.
    \mark\default a,4-.-> r r R2.*5

    \alternative {
      \volta 1 {
        d'4.\p\< d, e' e, \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        R2.\! r8 e16\f e e4 c a\< a8 b~8 b c->( b) e->( f) g->( af) \mark\default a?4->-.\! r4 r R2.
        e8\ff e-. r e-. r4 ef8 ef-. r ef-. r4 R2.*2 e8\ff e-. r e-. r4 ef8 ef-. r ef-. r4 R2.*4
        bf8-.->\mf\< bf-. bf-. bf-.-> bf-. bf-. a-.-> a-. a-. a-.-> a-. a-.
        e'2.\fp\<~2. \mark\default a4-.->\fp r4 r R2.*7 \mark\default R2.*3 r4 r8
        c,16-.\ff c-. c-. c-. c-. c-. c4-. r4 r R2.*2 b'16-. b-. b-. b-. a-. a-. a-. a-. g-. g-. g-. g-.
        f4-. r4 r R2.*2 r4 r8 d16-. d-. d-. d-. d-. d-. d4-. r8e16-. e-. e-. e-. e-. e-. e4-. r8
        e16-.\> e-. e-. e-. e-. e-. a-.\p\< a-. a-. a-. b-. b-. b-. b-. c-. c-. c-. c-.
        b-. b-. b-. b-. c-. c-. c-. c-. e-. e-. e-. e-.
      }
      \volta 2 {
        R2.*8\! \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        \mark\default a,4.(\f d c b) R2.*2 a4.( d c b) R2.*4
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default cs,4.(\ff fs e gs) a8\<-.->\fp\startTextSpan a-. a-. a-. a-. a-. b-.-> b-. b-. b-. b-. b-.
        c-.-> c-. c-. c-. c-. c-. c-.->\ff c-. c-. c-.-^ c-.-^ c-.-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  R1*8 \mark\default
  R1*8 \mark\default
  R1*10 r2 e,2\pp\<~1\>~1~1 R1\! R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 a4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 d,4(\ff a') a4.->~ \time 9/8 2 b4 c8(b4-> ) \time 7/8 a2..\> \time 9/8 R1*9/8\!
  \time 7/8 d,4(\ff a') g4. \time 9/8 f4 e4 d4 e8 c4-> \time 7/8 d2..\>-> \time 9/8 R1*9/8\!

  \time 7/8 d4\mf-.-> d-. d-.-> d8-. \time 9/8 d4-.-> r4 r4. r4
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 d4-.-> r4 r4. r4
  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 d2\f\<~4.~4

  \mark\default
  \time 7/8 d4\ff-. r r4. R1*7/8*2 \time 9/8 R1*9/8
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 d4\f-. d-. e8-. f-. e-. d4-. d-. cs8-. d-. e-. d4-. d-. e8-. f-. e-.
  \time 3,3,3 9/8 g-. a-. g-. a-. b-. a-. b-. c-. cs-.

  \time 7/8 d4\ff -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 d,4(\ff a') a4.->~ \time 9/8 2 b4 c8(b4-> ) \time 7/8 a2..\> \time 9/8 R1*9/8\!
  \time 7/8 d,4(\ff a') g4. \time 9/8 f4 e4 d4 e8 c4->

  \mark\default
  \time 7/8 g'4(\ff d') c4. \time 9/8 bf4 a4 g4 a8 f4->
  \time 7/8 d4(\ff a') g4. \time 9/8 f4 e4 d4 e8 c4->
  \time 7/8 d2..\> \time 9/8 R1*9/8\!

  \time 2/4 r4 d'4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  R1*8 \mark\default

  c4.\ff c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} af8-. af-. r bf-. bf4-. a8-. a-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} af8-. af-. r bf-. bf4-. a8-. a-. \mark\default

  R1*8 \mark\default

  R1 g8-. g-. r g-. g4-. g8-. g-.
  R1 af8-. af-. r bf-. bf4-. a8-. a-.
  c4.\f c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-. \mark\default

  c8.-.\f c16-.~8 c-.~16 c8.-. c4-. R1
  c8.-. c16-.~8 c-.~16 c8.-. c4-. R1
  ef8.-. ef16-.~8 ef-.~16 ef8.-. ef4-. \mark\default R1*4 \mark\default

  R1*8 \mark\default

  c4.\ff c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} af8-. af-. r bf-. bf4-. a8-. a-. \mark\default
  c4.\fff c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} af8-. af-. r bf-. bf4-. a8-. a-.

  g4-. r8 g16 g g8 g16 g g g g g g8-^ g-^ r g-^ g4-^ g'8-^ g-^ g4-^ r r2 \fine
}

scoreAHornFI = \relative c' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*8
  e1\p\<~1 f2 \tuplet 3/2 {f4( d c)} f1 e1\f\> R1*2\!
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*8 b2.\p~2. e2.~2. b g e~2.

  \time 6/8 \mark\default
  R2.*16
  \mark\default  R2.*8 \mark\default \relative c'{\greenPathBassA} \mark\default R2.*7
  e8.\< fs g a fs2.\ff~4. \tuplet 2/3 {g8 a} fs4.~8 b,4 cs2. e~4. \tuplet 2/3 {fs8 g} e4.~8 g4 a4. c
  \mark\default b2.~4.~8 e4 b2. e d4. cs d b \override TextSpanner.bound-details.left.text = "poco rit."
  a2.\startTextSpan \< a4. c\stopTextSpan

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a'4\fp-.-> r4 r R2.*2 r2
    \once \override Hairpin.bound-padding = #0.25
    b,4\p\< a4\fp-.-> r4 r R2.*3 \time 4/4 R1 \time 3/4
    \mark\default d8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g'->( f e) f->( e d)
    \tuplet 3/2 {d-.->\f c-. bf-.} \tuplet 3/2 {bf-.-> a-. g-.} \tuplet 3/2 {f-.-> e-. d-.}
    \mark\default a'4-.-> r r R2.*5

    \alternative {
      \volta 1 {
        R2.*2 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4.\f e'->~2. g4(->\< f d) e( c b) \mark\default a4.->-.\ff fs g g
        a8 a-. r a-. r4 a8 a-. r a-. r4 R2.*2 a8\ff a-. r a-. r4 a8 a-. r a-. r4 R2.*4
        cs4.(\mf\< fs e ds) a8-.->\fp\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-.
        \mark\default a'4-.->\fp r4 r R2. bf,2.\<~2.\f\> a4-.\p r4 r R2. bf2.\<~2.\f\>
        \mark\default a4-.\p r4 r
        R2.*2 r4 r8 e'16-.\ff e-. e-. e-. e-. e-. e4-. r4 r R2.*2
        % b4:16-. a:16-. g:16-.
        b16-. b-. b-. b-. a-. a-. a-. a-. g-. g-. g-. g-.
        f4-. r4 r R2.*2 r4 r8 a16-. a-. a-. a-. a-. a-. a4-. r8b16-. b-. b-. b-. b-. b-. b4-. r8
        a16-.\> a-. a-. a-. a-. a-. a-.\p\< a-. a-. a-. b-. b-. b-. b-. c-. c-. c-. c-.
        b-. b-. b-. b-. c-. c-. c-. c-. e-. e-. gs-. gs-.
      }
      \volta 2 {
        R2.*8\! \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        \mark\default a,4.(\ff d c b) R2.*2 a4.( d c b) R2.*4
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default cs4.(\ff fs e gs) a8\<-.->\fp\startTextSpan
        a-. a-. a-. a-. a-. b-.-> b-. b-. b-. b-. b-.
        c-.-> c-. c-. c-. c-. c-. g-.->\ff g-. g-. gs-.-^ gs-.-^ gs-.-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  R1*8 \mark\default
  R1*8 \mark\default
  R1*15 R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 d4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 d4(\ff a') a4.->~ \time 9/8 2 b4 c8(b4-> ) \time 7/8 a2..\> \time 9/8 R1*9/8\!
  \time 7/8 d,4(\ff a') a4.->~ \time 9/8 2 g4 a8(g4-> ) \time 7/8 f2 e8 f e \time 9/8 d2->\>~4. r4\!
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 d4(\ff a') a4.->~ \time 9/8 2 b4 c8(b4-> ) \time 7/8 a2..\> \time 9/8 R1*9/8\!
  \time 7/8 d,4(\ff a') g4. \time 9/8 f4 e4 d4 e8 c4-> \time 7/8 d2..->\> \time 9/8 R1*9/8\!
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \time 7/8 f2\f~4. \time 9/8 g2~4.~4
  \time 7/8 f2~4. \time 9/8 g4.\< f4. g4. \time 7/8 a2~4.~ \time 9/8 2~4.~4

  \mark\default
  \time 7/8 R1*7/8*3\! \time 9/8 R1*9/8
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 d,2..\< e g \time 9/8 g4.-.\ff a-. cs-.

  \time 7/8 a4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 d,4(\ff a') a4.->~ \time 9/8 2 b4 c8(b4-> ) \time 7/8 a2..\> \time 9/8 R1*9/8\!
  \time 7/8 d,4(\ff a') g4. \time 9/8 f4 e4 d4 e8 c4->

  \mark\default
  \time 7/8 g4(\ff d') c4. \time 9/8 bf4 a4 g4 a8 f4->
  \time 7/8 d'4(\ff a') g4. \time 9/8 f4 e4 d4 e8 c4->
  \time 7/8 d2..\> \time 9/8 R1*9/8\!

  \time 2/4 r4 d4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  c8-.\f \repeat unfold 23 {c8-.}
  \tuplet 3/2 {bf4-. bf-. bf-.} \tuplet 3/2 {a-. a-. a-.} \repeat unfold 16 {c8-.}
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {df-. df-. df-.}
  \tuplet 3/2 {ef-. ef-. ef-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  R1 c,8-. c-. r c-. c4-. c8-. c-. R1 ef8-. ef-. r f-. f4-. f8-. f-.
  R1 c8-. c-. r c-. c4-. c8-. c-. R1 ef8-. ef-. r f-. f4-. f8-. f-. \mark\default

  c2\ff c4 d ef2 d4 c \tuplet 3/2 {d4 ef d} \tuplet 3/2 {d ef d} c1
  c2 c4 d \tuplet 3/2 {f ef f} g2 \tuplet 3/2 {g4 f g} a f g1 \mark\default

  R1*4 c,4.\f c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-. \mark\default

  g4-.\ff g-. g-. g-. af'8-.\mf\< g-. f-. ef-. f-. ef-. d-. df-.
  c4-.\ff c-. c-. c-.
  ef8-.\mf\< df-. cf-. bf-. df-. cf-. bf-. a-.
  af4-.\ff af-. af-. af-.

  \mark\default
  af8-.\p\< g-. af-. bf-. bf-. af-. bf-. cf-. cf-. bf-. cf-. df-. df-. cf-. df-. d-.
  ef-. df-. ef-. e-. e-. ef-. e-. fs-. fs-. e-. fs-. g-. g-. fs-. g-. g-.\fff \mark\default

  c,8-.\f \repeat unfold 23 {c8-.}
  \tuplet 3/2 {bf4-. bf-. bf-.} \tuplet 3/2 {a-. a-. a-.} \repeat unfold 16 {c8-.}
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {df-. df-. df-.}
  \tuplet 3/2 {ef-. ef-. ef-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  c,4.\ff c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-. \mark\default
  c4.\fff c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.

  r2 g'\ff\< g8-^\ff g-^ r g-^ g4-^ c8-^ c-^ c4-^ r r2 \fine
}

scoreAHornFII = \relative c' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*8
  e1\p\<~1 f1~1 e1\f\> R1*2\!
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  \transpose c c' {
    \fixed c {
      e,8\p-.^\markup{\italic "quasi pizz."} b,-. e-. r4. b,,8-. fs,-. cs-. r4.
      c,8-. g,-. d-. r4. a,,8-. e,-. b,-. r4.
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
    {fs8-.\startTextSpan fs16-. fs-. r fs-. fs8-. fs-. fs-.}
    {fs8-. fs16-. fs-. r fs-. fs8.-. fs16-. fs-. fs-.\stopTextSpan}
  }

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a4\fp-.-> r4 r R2.*2 r4 r
    \once \override Hairpin.bound-padding = #0.25
    b4\p\< a4\fp-.-> r4 r R2.*3 \time 4/4 R1 \time 3/4
    \mark\default d,8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g'->( f e) f->( e d)
    d4-.\f bf f
    \mark\default a4-.-> r r R2.*5

    \alternative {
      \volta 1 {
        R2.*3\! \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        r8 e'16\f e e4 c a\< a8 b~8 b c->( b) e->( f) g->( af) \mark\default a?4->-.\! r4 r R2.
        e8\ff e-. r e-. r4 ef8 ef-. r ef-. r4 R2.*2 e8\ff e-. r e-. r4 ef8 ef-. r ef-. r4 R2.*4
        bf8-.->\mf\< bf-. bf-. bf-.-> bf-. bf-. a-.-> a-. a-. a-.-> a-. a-.
        f'8-.->\fp\< f-. f-. f-.-> f-. f-. f-.-> f-. f-. f-.-> f-. f-.
        \mark\default a4-.->\fp r4 r R2.*7 \mark\default R2.*3
        r4 r8 c,16-.\ff c-. c-. c-. c-. c-. c4-. r4 r R2.*2
        b16-. b-. b-. b-. a-. a-. a-. a-. g-. g-. g-. g-.
        f4-. r4 r R2.*2 r4 r8 d16-. d-. d-. d-. d-. d-. d4-. r8e16-. e-. e-. e-. e-. e-. e4-. r8
        e16-.\> e-. e-. e-. e-. e-. a-.\p\< a-. a-. a-. b-. b-. b-. b-. c-. c-. c-. c-.
        b-. b-. b-. b-. c-. c-. c-. c-. e-. e-. e-. e-.
      }
      \volta 2 {
        R2.*8\! \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        \mark\default a,4.(\ff d c b) R2.*2 a4.( d c b) R2.*4
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default cs,4.(\ff fs e gs) a8\<-.->\fp\startTextSpan a-. a-. a-. a-. a-. b-.-> b-. b-. b-. b-. b-.
        c-.-> c-. c-. c-. c-. c-. c-.->\ff c-. c-. c-.-^ c-.-^ c-.-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  R1*8 \mark\default
  R1*8 \mark\default
  R1*15 R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 a4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 d4(\ff a') a4.->~ \time 9/8 2 b4 c8(b4-> ) \time 7/8 a2..\> \time 9/8 R1*9/8\!
  \time 7/8 d,4(\ff a') a4.->~ \time 9/8 2 g4 a8(g4-> ) \time 7/8 f2 e8 f e \time 9/8 d2->\>~4. r4\!
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 d4(\ff a') a4.->~ \time 9/8 2 b4 c8(b4-> ) \time 7/8 a2..\> \time 9/8 R1*9/8\!
  \time 7/8 d,4(\ff a') g4. \time 9/8 f4 e4 d4 e8 c4-> \time 7/8 d2..->\> \time 9/8 R1*9/8\!
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \time 7/8 d2\f~4. \time 9/8 e2~4.~4
  \time 7/8 a2~4. \time 9/8 g4.\< f4. e4. \time 7/8 d2~4.~ \time 9/8 2~4.~4

  \mark\default
  \time 7/8 R1*7/8*3\! \time 9/8 R1*9/8
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 d2..\<~2..~2.. \time 9/8 e4.-.\ff f-. g-.

  \time 7/8 a,4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 d4(\ff a') a4.->~ \time 9/8 2 b4 c8(b4-> ) \time 7/8 a2..\> \time 9/8 R1*9/8\!
  \time 7/8 d,4(\ff a') g4. \time 9/8 f4 e4 d4 e8 c4->

  \mark\default
  \time 7/8 g4(\ff d') c4. \time 9/8 bf4 a4 g4 a8 f4->
  \time 7/8 d'4(\ff a') g4. \time 9/8 f4 e4 d4 e8 c4->
  \time 7/8 d2..\> \time 9/8 R1*9/8\!

  \time 2/4 r4 a4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  g8-.\f \repeat unfold 23 {g8-.}
  \tuplet 3/2 {f4-. f-. f-.} \tuplet 3/2 {f-. f-. f-.}
  \repeat unfold 16 {g8-.}
  \tuplet 3/2 {gf4-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. gf-.}
  \tuplet 3/2 {bf-. bf-. bf-.} \tuplet 3/2 {df-. df-. d-.} \mark\default

  \repeat unfold 4 {R1 c8-. c-. r c-. c4-. c8-. c-.} \mark\default

  c2\ff c4 d ef2 d4 c \tuplet 3/2 {d4 ef d} \tuplet 3/2 {d ef d} c1
  c2 c4 d \tuplet 3/2 {f ef f} g2 \tuplet 3/2 {g4 f g} a f g1 \mark\default

  R1*4 c,4.\f c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-. \mark\default

  c4-.\ff c-. c-. c-. af'8-.\mf\< g-. f-. ef-. f-. ef-. d-. df-.
  c4-.\ff c-. c-. c-.
  ef8-.\mf\< df-. cf-. bf-. df-. cf-. bf-. a-.
  af4-.\ff af-. af-. af-.

  \mark\default
  af8-.\p\< g-. af-. bf-. bf-. af-. bf-. cf-. cf-. bf-. cf-. df-. df-. cf-. df-. d-.
  ef-. df-. ef-. e-. e-. ef-. e-. fs-. fs-. e-. fs-. g-. g-. fs-. g-. g-.\fff \mark\default

  g8-.\f \repeat unfold 23 {g8-.}
  \tuplet 3/2 {f4-. f-. f-.} \tuplet 3/2 {f-. f-. f-.}
  \repeat unfold 16 {g8-.}
  \tuplet 3/2 {gf4-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. gf-.}
  \tuplet 3/2 {bf-. bf-. bf-.} \tuplet 3/2 {df,-. df-. d-.} \mark\default

  c4.\ff c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} af8-. af-. r bf-. bf4-. a8-. a-. \mark\default
  c4.\fff c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} af8-. af-. r bf-. bf4-. a8-. a-.

  c1 c8-^ c-^ r c-^ c4-^ c8-^ c-^ c4-^ r r2 \fine
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
  {e16\f-. fs-. b-. fs-. b-. cs-. cs-. cs-. e-. cs-. e-. fs-.} \mark\default g8-. r8 r2
  R2.*7 \mark\default
  \relative c' {\greenPathBassPreB \greenPathBassB}

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a,4\fp-.-> r4 r R2.*2 r2
    \once \override Hairpin.bound-padding = #0.25
    b4\p\< a4\fp-.-> r4 r R2.*3 \time 4/4 R1 \time 3/4
    \mark\default d8->\mf\<( c b) c->( b a) d->( c b) c->( b a) g->( f e) f->( e d)
    d'4-.\f bf f
    \mark\default e'8-.\p e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-.
    e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-.
    c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-.

    \alternative {
      \volta 1 {
        a-.\< a-. a-. a-. a-. a-. b-. b-. b-. b-. b-. b-.
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4.\f e'->~2. g4(->\< f d) e( c b)
        \mark\default a4\!-.-> r4 r R2.
        e'8\ff e-. r e-. r4 ef8 ef-. r ef-. r4 R2.*2 e8\ff e-. r e-. r4 ef8 ef-. r ef-. r4 R2.*4
        cs4.(\mf\< fs e ds) a8-.->\fp\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-.
        \mark\default a4-.->\fp r4 r R2.
        bf2.\<~2.\f\> a4-.\p r4 r R2. bf2.\<~2.\f\> \mark\default a4-.\p r4 r
        R2.*2 r4 r8 e'16-.\ff e-. e-. e-. e-. e-. e4-. r4 r R2.*2
        b16-. b-. b-. b-. a-. a-. a-. a-. g-. g-. g-. g-.
        f4-. r4 r R2.*2 r4 r8 a16-. a-. a-. a-. a-. a-. a4-. r8b16-. b-. b-. b-. b-. b-. b4-. r8
        a16-.\> a-. a-. a-. a-. a-. a-.\p\< a-. a-. a-. b-. b-. b-. b-. c-. c-. c-. c-.
        b-. b-. b-. b-. c-. c-. c-. c-. e-. e-. e-. e-.
      }
      \volta 2 {
        R2.*8\! \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        \mark\default a,4.(\f d c b) R2.*2 a4.( d c b) R2.*4
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default cs4.(\ff fs e gs) f2.\fp\<\startTextSpan ~2.~2.~2.\ff R2.\fermata \stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  R1*8 \mark\default
  R1*8 \mark\default
  R1*15 R1\fermata
  \tuplet 3/2 {
    f2\ff^\markup{\italic "solo"}^"Out of pitch"^"Goofy war shout"
    \glissando af4-^
  } f2\fermata->


  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 d4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 c,2->\<~4. \time 9/8 b2 b'4.~4
  \time 7/8 d4-.-^\ff r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \time 7/8 d2\f~4. \time 9/8 e2~4.~4 \time 7/8 f2~4. \time 9/8 g4.\< f4. g4. \time 7/8 a2~4.~\time 9/8 2~4.~4

  \mark\default
  \time 7/8 R1*7/8*3\! \time 9/8 R1*9/8
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 d,2..\< e g \time 9/8 g4.-.\ff a-. e-.

  \time 7/8 a4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 c,,2->~4.\< \time 9/8 b2 b'4.~4

  \time 2/4 r4\! d4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  c8-.\f c-. c-. c-> r4 c-.-> \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 3/2 {bf4-. bf-. bf-.} \tuplet 3/2 {a-. a-. a-.}
  \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {df-. df-. df-.}
  \tuplet 3/2 {ef-. ef-. ef-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  R1*4 \repeat unfold 2 {c,4-. c-. c-. c-. c8-. c-. r c-. c4-. c8-. c-.} \mark\default

  c1\ff ef bf bf2 a c1 c bf2 a c d \mark\default

  R1*4 c4-.\f c-. c-. c-. c8-. c-. r c-. c4-. c8-. c-.
  c4-. c-. c-. c-. af8-. af-. r f-. f4-. f8-. f-. \mark\default

  c'4-.\ff c-. c-. c-. af'8-.\mf\< g-. f-. ef-. f-. ef-. d-. df-.
  c4-.\ff c-. c-. c-.
  ef8-.\mf\< df-. cf-. bf-. df-. cf-. bf-. a-.
  af4-.\ff af-. af-. af-.

  \mark\default
  af8-.\p\< g-. af-. bf-. bf-. af-. bf-. cf-. cf-. bf-. cf-. df-. df-. cf-. df-. d-.
  ef-. df-. ef-. e-. e-. ef-. e-. fs-. fs-. e-. fs-. g-. g-. fs-. g-. g-.\fff \mark\default

  c,8-.\f c-. c-. c-> r4 c-.-> \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 3/2 {bf4-. bf-. bf-.} \tuplet 3/2 {a-. a-. a-.}
  \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {df-. df-. df-.}
  \tuplet 3/2 {ef-. ef-. ef-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  R1*4 \mark\default c,4-.-^\ff c-.-^ c-.-^ c-.-^ c8-.-^ c-.-^ r c-.-^ c4-.-^ c8-.-^ c-.-^
  c4-.-^ c-.-^ c-.-^ c-.-^ af8-.-^ af-.-^ r f-.-^ f4-.-^ f8-.-^ f-.-^

  r2 g'\ff\< g8-^\ff g-^ r g-^ g4-^ g8-^ g-^ g4-^ r r2 \fine
}

scoreATromboneII = \relative c {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*8 e'1\p\<~1 f1~1 e1\f\> R1*2\!
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  R2.*16 \mark\default  R2.*8 \mark\default R2.*8 \mark\default R2.*8 \relative c' {\greenPathBassC}

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    e4\fp-.-> r4 r R2.*2 r2
    \once \override Hairpin.bound-padding = #0.25
    b4\p\< e4\fp-.-> r4 r R2.*3 \time 4/4 R1 \time 3/4
    \mark\default d8-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. bf-.-> bf-. bf-. bf-.-> bf-. bf-. bf2.\f\>
    \mark\default a4-.\p r r R2.*5

    \alternative {
      \volta 1 {
        a8-.\< a-. a-. a-. a-. a-. b-. b-. b-. b-. b-. b-. a4-.\f r4 r
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        r8 e'16\f e e4 c a\< a8 b~8 b c->( b) e,->( f) g->( af) \mark\default a?4->-.\! r4 r R2.
        e'8->\ff e e e-> e e ef-> ef ef ef-> ef ef d4-.-> r4 r R2.
        e8->\ff e e e-> e e ef-> ef ef ef-> ef ef d4-.-> r4 r R2.*3
        bf8-.->\mf\< bf-. bf-. bf-.-> bf-. bf-. a-.-> a-. a-. a-.-> a-. a-.
        f8-.->\fp\< f-. f-. f-.-> f-. f-. f-.-> f-. f-. f-.-> f-. f-.
        \mark\default a4-.->\fp r4 r R2.*7 \mark\default R2.*3
        r4 r8 c16-.\ff c-. c-. c-. c-. c-. c4-. r4 r R2.*2
        b16-. b-. b-. b-. a-. a-. a-. a-. g-. g-. g-. g-.
        f4-. r4 r R2.*2 r4 r8 d'16-. d-. d-. d-. d-. d-. d4-. r8e16-. e-. e-. e-. e-. e-. e4-. r8
        e16-.\> e-. e-. e-. e-. e-. a,-.\p\< a-. a-. a-. b-. b-. b-. b-. c-. c-. c-. c-.
        b-. b-. b-. b-. c-. c-. c-. c-. e-. e-. e-. e-.
      }
      \volta 2 {
        a,8-.->\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. b-.-> b-. b-.
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a-.->\mf a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-.
        ef'-.-> ef-. ef-. ef-.-> ef-. ef-. d-.-> d-. d-. d-. d-. d-. a4-.-> r4 r R2.
        \mark\default e'8-.->\p\< e-. e-. e-.-> e-. e-. ef-.-> ef-. ef-. ef-.-> ef-. ef-. d4-.->\mf r4 r R2.
        e8-.->\p\< e-. e-. e-.-> e-. e-. ef-.-> ef-. ef-. ef-.-> ef-. ef-. d4-.->\mf r4 r R2.*3
        \mark\default bf8-.->\mf\< bf-. bf-. bf-.-> bf-. bf-. a-.->\ff\> a-. a-. a-.-> a-. a-.
        \override TextSpanner.bound-details.left.text = "rall."
        a,8\<-.->\fp\startTextSpan a-. a-. a-. a-. a-. b-.-> b-. b-. b-. b-. b-.
        c-.-> c-. c-. c-. c-. c-. c-.->\ff c-. c-. c-.-^ c-.-^ c-.-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  R1*8 \mark\default
  R1*8 \mark\default
  R1*15 R1\fermata
  \grace{a'8\glissando\mf^\markup{\italic "flz."}} b2\glissando a2\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 a4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 d,2->\<~4. \time 9/8 b2 b'4.~4
  \time 7/8 a4-.-^\ff r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \time 7/8 f2\f~4. \time 9/8 g2~4.~4 \time 7/8 a2~4. \time 9/8 g4.\< f4. e4. \time 7/8 d2~4.~\time 9/8 2~4.~4

  \mark\default
  \time 7/8 R1*7/8*3\! \time 9/8 R1*9/8
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 d'2..\<~2..~2.. \time 9/8 e4.-.\ff d-. cs-.

  \time 7/8 d4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 d,2->\<~4. \time 9/8 b2 b'4.~4

  \time 2/4 r4\! a4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  g8-.\f g-. g-. g-> r4 g-.-> af8-. af-. af-. af-> r4 af-.-> g8-. g-. g-. g-> r4 g-.->
  \tuplet 3/2 {f4-. f-. f-.} \tuplet 3/2 {f-. f-. f-.}
  g8-. g-. g-. g-> r4 g-.-> af8-. af-. af-. af-> r4 af-.->
  \tuplet 3/2 {gf4-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. gf-.}
  \tuplet 3/2 {gf-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  R1*8 \mark\default

  ef'1\ff c d f g af g2 f d1 \mark\default

  R1*4 g,4-.\f g-. g-. g-. g8-. g-. r g-. g4-. g8-. g-.
  g4-. g-. g-. g-. af8-. af-. r af-. af4-. f8-. f-. \mark\default

  g4-.\ff g-. g-. g-. af8-.\mf\< g-. f-. ef-. f-. ef-. d-. df-.
  g4-.\ff g-. g-. g-.
  ef'8-.\mf\< df-. cf-. bf-. df-. cf-. bf-. a-.
  af4-.\ff af-. af-. af-.

  \mark\default
  af8-.\p\< g-. af-. bf-. bf-. af-. bf-. cf-. cf-. bf-. cf-. df-. df-. cf-. df-. d-.
  ef-. df-. ef-. e-. e-. ef-. e-. fs-. fs-. e-. fs-. g-. g-. fs-. g-. g-.\fff \mark\default

  g,8-.\f g-. g-. g-> r4 g-.-> af8-. af-. af-. af-> r4 af-.-> g8-. g-. g-. g-> r4 g-.->
  \tuplet 3/2 {f4-. f-. f-.} \tuplet 3/2 {f-. f-. f-.}
  g8-. g-. g-. g-> r4 g-.-> af8-. af-. af-. af-> r4 af-.->
  \tuplet 3/2 {gf4-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. gf-.}
  \tuplet 3/2 {gf-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  R1*4 \mark\default g4-.-^\ff g-.-^ g-.-^ g-.-^ g8-.-^ g-.-^ r g-.-^ g4-.-^ g8-.-^ g-.-^
  g4-.-^ g-.-^ g-.-^ g-.-^ af8-.-^ af-.-^ r f-.-^ f4-.-^ f8-.-^ f-.-^

  c'1 c8-^ c-^ r c-^ c4-^ c8-^ c-^ c4-^ r r2 \fine
}

scoreATromboneIII = \relative c {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*8 e1\p\<~1 f1~1 e1\f\> R1*2\!
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default R2.*16

  \time 6/8 \mark\default
  R2.*16 \mark\default  R2.*8 \mark\default R2.*8 \mark\default R2.*8 \relative c {\greenPathBassC}

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    e4\fp-.-> r4 r R2.*2 r2
    \once \override Hairpin.bound-padding = #0.25
    b4\p\< e4\fp-.-> r4 r R2.*3 \time 4/4 R1 \time 3/4
    \mark\default d8-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. bf-.-> bf-. bf-. bf-.-> bf-. bf-. bf2.\f\>
    \mark\default a4-.\p r r R2.*5

    \alternative {
      \volta 1 {
        a8-.\< a-. a-. a-. a-. a-. b-. b-. b-. b-. b-. b-. a4-.\f r4 r
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        r8 e'16\f e e4 c a\< a8 b~8 b c->( b) e,->( f) g->( af) \mark\default a?4->-.\! r4 r R2.
        e'8->\ff e e e-> e e ef-> ef ef ef-> ef ef d4-.-> r4 r R2.
        e8->\ff e e e-> e e ef-> ef ef ef-> ef ef d4-.-> r4 r R2.*3
        bf8-.->\mf\< bf-. bf-. bf-.-> bf-. bf-. a-.-> a-. a-. a-.-> a-. a-.
        f8-.->\fp\< f-. f-. f-.-> f-. f-. f-.-> f-. f-. f-.-> f-. f-.
        \mark\default a4-.->\fp r4 r R2.*7 \mark\default R2.*3
        r4 r8 c16-.\ff c-. c-. c-. c-. c-. c4-. r4 r R2.*2
        b16-. b-. b-. b-. a-. a-. a-. a-. g-. g-. g-. g-.
        f4-. r4 r R2.*2 r4 r8 d'16-. d-. d-. d-. d-. d-. d4-. r8e16-. e-. e-. e-. e-. e-. e4-. r8
        e16-.\> e-. e-. e-. e-. e-. a,-.\p\< a-. a-. a-. b-. b-. b-. b-. c-. c-. c-. c-.
        b-. b-. b-. b-. c-. c-. c-. c-. e-. e-. e-. e-.
      }
      \volta 2 {
        a,8-.->\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. b-.-> b-. b-.
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a-.->\mf a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-.
        ef'-.-> ef-. ef-. ef-.-> ef-. ef-. d-.-> d-. d-. d-. d-. d-. a4-.-> r4 r R2.
        \mark\default e'8-.->\p\< e-. e-. e-.-> e-. e-. ef-.-> ef-. ef-. ef-.-> ef-. ef-. d4-.->\mf r4 r R2.
        e8-.->\p\< e-. e-. e-.-> e-. e-. ef-.-> ef-. ef-. ef-.-> ef-. ef-. d4-.->\mf r4 r R2.*3
        \mark\default bf8-.->\mf\< bf-. bf-. bf-.-> bf-. bf-. a-.->\ff\> a-. a-. a-.-> a-. a-.
        \override TextSpanner.bound-details.left.text = "rall."
        f'2.\fp\<\startTextSpan ~2.~2.~2.\ff R2.\fermata \stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  R1*8 \mark\default
  R1*8 \mark\default
  R1*15 R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 g,4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 d'2->\<~4. \time 9/8 d2 d4.~4
  \time 7/8 g4-.-^\ff r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \time 7/8 d2\f~4. \time 9/8 d2~4.~4 \time 7/8 d2~4. \time 9/8 d4.\< d4. d4. \time 7/8 d2~4.~\time 9/8 2~4.~4

  \mark\default
  \time 7/8 R1*7/8*3\! \time 9/8 R1*9/8
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 d2..\<~2..~2.. \time 9/8 e4.-.\ff f-. g-.

  \time 7/8 g4\mf -.-> r r4. \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 d2->\<~4. \time 9/8 d2 d4.~4

  \time 2/4 r4\! d4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  g,8-.\f g-. g-. g-> r4 g-.-> af8-. af-. af-. af-> r4 af-.-> g8-. g-. g-. g-> r4 g-.->
  \tuplet 3/2 {f4-. f-. f-.} \tuplet 3/2 {f-. f-. f-.}
  g8-. g-. g-. g-> r4 g-.-> af8-. af-. af-. af-> r4 af-.->
  \tuplet 3/2 {gf4-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. gf-.}
  \tuplet 3/2 {gf-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  R1*8 \mark\default

  ef'1\ff c d f g af g2 f d1 \mark\default

  R1*4 g,4-.\f g-. g-. g-. g8-. g-. r g-. g4-. g8-. g-.
  g4-. g-. g-. g-. af8-. af-. r af-. af4-. f8-. f-. \mark\default

  g4-.\ff g-. g-. g-. af8-.\mf\< g-. f-. ef-. f-. ef-. d-. df-.
  g4-.\ff g-. g-. g-.
  ef'8-.\mf\< df-. cf-. bf-. df-. cf-. bf-. a-.
  af4-.\ff af-. af-. af-.

  \mark\default
  af8-.\p\< g-. af-. bf-. bf-. af-. bf-. cf-. cf-. bf-. cf-. df-. df-. cf-. df-. d-.
  ef-. df-. ef-. e-. e-. ef-. e-. fs-. fs-. e-. fs-. g-. g-. fs-. g-. g-.\fff \mark\default

  g,8-.\f g-. g-. g-> r4 g-.-> af8-. af-. af-. af-> r4 af-.-> g8-. g-. g-. g-> r4 g-.->
  \tuplet 3/2 {f4-. f-. f-.} \tuplet 3/2 {f-. f-. f-.}
  g8-. g-. g-. g-> r4 g-.-> af8-. af-. af-. af-> r4 af-.->
  \tuplet 3/2 {gf4-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. gf-.}
  \tuplet 3/2 {gf-. gf-. gf-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  R1*4 \mark\default g4-.-^\ff g-.-^ g-.-^ g-.-^ g8-.-^ g-.-^ r g-.-^ g4-.-^ g8-.-^ g-.-^
  g4-.-^ g-.-^ g-.-^ g-.-^ af8-.-^ af-.-^ r f-.-^ f4-.-^ f8-.-^ f-.-^

  c'1 c8-^ c-^ r c-^ c4-^ c8-^ c-^ c4-^ r r2 \fine
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
      e,8\p-.^\markup{\italic "quasi pizz."} b,-. e-. r4. b,,8-. fs,-. cs-. r4.
      c,8-. g,-. d-. r4. a,,8-. e,-. b,-. r4.
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

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a4->\fp a8 \repeat unfold 5 {a4-> a8} f4 f g,\< a->\fp a'8 \repeat unfold 3 {a4-> a8}
    a4->\< a8 a4-> a8 g4-> g8 g4-> g8 \time 4/4 f4-> f f f \time 3/4 \mark\default d( d' a) f( a c)
    bf,8-.\ff( f'-. a-. bf-. c-. d-. f2.-.->\>)
    \mark\default a,,4\fp-> a'8 a4-> a8 g8->\mf( f d e) c->( b) e-> r
    a\p \repeat unfold 3 {a4-> a8} f4-> a8 a4-> a8
    e'8(->\mf d b c) a(-> b)

    \alternative {
      \volta 1 {
        a-.\< a-. a-. a-. a-. a-. b-. b-. b-. b-. b-. b-.
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1) a4-.\f r4 r
        r8 e16\f e e4 c a\< a8 b~8 b c->( b) e->( f) g->( af) \mark\default a?4.->-.\ff fs g g
        a8 a-. r a-. r4 a8 a-. r a-. r4 a4.->-.\ff fs g g
        a8 a-. r a-. r4 a8 a-. r a-. r4 R2.*6
        a8-.->\fp\< a-. a-. a-.-> a-. a-. b-.-> b-. b-. c-.-> c-. c-. \mark\default a4-.->\fp r4 r R2.
        e8\<-> e e e-> e e e-> e e e-> e e a4\fp-.-> r4 r R2.
        e8\<-> e e e-> e e e-> e e e-> e e \mark\default a4\fp-.-> r4 r R2.*2
        r4 r8 a16-.\ff a-. a-. a-. a-. a-. a4-. r4 r R2.
        d8\mp c->( b) c->( b a) b->\ff b a-> a g-> g f4-.\fp r4 r R2.*2
        r4 r8 a16-. a-. a-. a-. a-. a-. a4-. r8b16-. b-. b-. b-. b-. b-. b4-. r8
        a16-.\> a-. a-. a-. a-. a-. a-.\p\< a-. a-. a-. b-. b-. b-. b-. c-. c-. c-. c-.
        b-. b-. b-. b-. c-. c-. c-. c-. e-. e-. gs-. gs-.
      }
      \volta 2 {
        d4.\< d, e' e, \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4\mf-> a8 a4-> a8 g8-.-> f-. d-. e-. c-.-> b-.
        ef4-> ef8 ef4-> ef8 d4 d d a8-.->\< a-. a-. a-. a-. a-. g-. g-. g-. g-. g-. g-.
        \mark\default a4.(\ff d c b) R2.*2 a4.( d c b) R2.*2 b4.( e-> d b)->
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default cs,4.(\ff fs e gs) a8\<-.->\fp\startTextSpan a-. a-. a-. a-. a-. b-.-> b-. b-. b-. b-. b-.
        c-.-> c-. c-. c-. c-. c-. g'-.->\ff g-. g-. gs-.-^ gs-.-^ gs-.-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor


  e8-.^\markup{ \italic "quasi pizz."}\mp e'-. b-. d,-. d'-. a-. r4 R1 e8-. e'-. b-. d,-. d'4-. r4 R1
  \mark\default
  e,8-. e'-. b-. d,-. d'-. a-. d,4-. R1
  \fungalBass r4. a8-. r4 b-.-> \fungalBass R1
  \fixed c {e8-. e'-. b-. d-. d'-. a-. r a-. r2 a8( g f g)} \mark\default
  \repeat unfold 3 {\fungalBass R1} \fixed c {e8-. e'-. b-. d-. d'-. a-. r a-. r2 a8( g f g)} \mark\default
  \fungalBass R1 e8-. e'-. b-. d,-. d'4-. r4 R1 e,8-. e'-. b-. d,-. d'-. a-. d,4-. R1
  \repeat unfold 2 {\fungalBass R1}
  \fixed c {e8-. e'-. b-. d-. d'-. a-. r a-. r2 a8( g f g)}
  \fungalBass R1 \fungalBass R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 a4-.->\mp a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.-> \mark\default

  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b4-. b4-.-> b8-. b4-.->
  \time 7/8 c4-.-> c-. b-.-> b8-. \time 9/8 af4-.-> af4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 g4-.-> g4-. g4-.-> g8-. g4-.->
  \time 7/8 bf4-.-> bf-. c-.-> c8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \mark\default
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b4-. b4-.-> b8-. b4-.->
  \time 7/8 c4-.-> c-. b-.-> b8-. \time 9/8 af4-.-> af4-. a4-.-> a8-. g4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \mark\default

  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b8-. a4-.-> a8-. g4-.-> g8-.
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b8-. a4-.-> a8-. g4-.-> g8-.
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b8-. a4-.-> a8-. g4-.-> g8-.
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b8-. a4-.-> a8-. g4-.-> g8-.
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \mark\default
  \time 7/8 a4-. a-. b4.-. a4-. a-. gs4.-. a4-. a-. b4.-. \time 9/8 c-. b-. r
  \time 7/8 a4-. a-. b4.-. a4-. a-. gs4.-. a4-. a-. b4.-. \time 9/8 c-. b-. r
  \time 7/8 d,4\f-. d-. e8-. f-. e-. d4-. d-. cs8-. d-. e-. d4-. d-. e8-. f-. e-.
  \time 3,3,3 9/8 g-. a-. g-. a-. b-. a-. b-. c-. cs-.

  \time 7/8 a4-.->\mp a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \mark\default
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 b4-.-> b4-. b4-.-> b8-. b4-.->
  \time 7/8 c4-.-> c-. b-.-> b8-. \time 9/8 af4-.-> af4-. a4-.-> a8-. g4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->

  \mark\default
  \time 7/8 ef4-.-> ef-. ef-.-> ef8-. \time 9/8 f4-.-> f4-. f4-.-> f8-. f4-.->
  \time 7/8 d4-.-> d-. d-.-> d8-. \time 9/8 e4-.-> e4-. e4-.-> e8-. e4-.->
  \time 7/8 a4-.-> a-. a-.-> a8-. \time 9/8 a4-.-> a4-. a4-.-> a8-. a4-.->

  \time 2/4 r4 a4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  c8-.\f c-. c-. c-> r4 c-.-> \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 3/2 {bf4-. bf-. bf-.} \tuplet 3/2 {a-. a-. a-.}
  \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {df-. df-. df-.}
  \tuplet 3/2 {ef-. ef-. ef-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  R1*4 \repeat unfold 2 {c,4-. c-. c-. c-. c8-. c-. r c-. c4-. c8-. c-.} \mark\default

  c2\ff c4 d ef2 d4 c \tuplet 3/2 {d4 ef d} \tuplet 3/2 {d ef d} c1
  c2 c4 d \tuplet 3/2 {f ef f} g2 \tuplet 3/2 {g4 f g} a f g1 \mark\default

  R1*4 c,4-.\f \repeat unfold 15 {c4-.} \mark\default

  c8.-.\f c16-.~8 c-.~16 c8.-. c4-. R1
  c8.-. c16-.~8 c-.~16 c8.-. c4-. R1
  af8.-. af16-.~8 af-.~16 af8.-. af4-.

  \mark\default
  af8-.\p\< g-. af-. bf-. bf-. af-. bf-. cf-. cf-. bf-. cf-. df-. df-. cf-. df-. d-.
  ef-. df-. ef-. e-. e-. ef-. e-. fs-. fs-. e-. fs-. g-. g-. fs-. g-. g-.\fff \mark\default

  c,8-.\f c-. c-. c-> r4 c-.-> \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 3/2 {bf4-. bf-. bf-.} \tuplet 3/2 {a-. a-. a-.}
  \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {df-. df-. df-.}
  \tuplet 3/2 {ef-. ef-. ef-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  c,4-.\ff c-. c-. c-. c8-. c-. r c-. c4-. c8-. c-.
  c4-. c-. c-. c-. af8-. af-. r f-. f4-. f8-. f-.
  \mark\default c'4-.-^ c-.-^ c-.-^ c-.-^ c8-.-^ c-.-^ r c-.-^ c4-.-^ c8-.-^ c-.-^
  c4-.-^ c-.-^ c-.-^ c-.-^ af8-.-^ af-.-^ r f-.-^ f4-.-^ f8-.-^ f-.-^

  c2\fff g'\< g8-^\ff g-^ r c,-^ c4-^ c'8-^ c-^ c4-^ r r2 \fine
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
  e8-.^\markup{ \italic "quasi pizz."} r r e-. r r b-. r r b-. r r c-. r r c-. r r a-. r r a-. r r b-.
  r r b-. r r g-. r r g-. r r a-. r r a-. r r c-. r r c-. r r R2.*8

  \mark\default e4.\mp e e e e e fs g
  e e e e e e fs\< g \mark\default
  \relative c {\greenPathBassA} \mark\default
  \relative c {\greenPathBassPreB \greenPathBassB}

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a,8\fp-.-> a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-.
    a-.-> a-. a-. a-.-> a-. a-. f-.-> f-. f-. f-. g4\<
    a8-.->\fp a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-.
    a-.->\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-. g-.-> g-.
    \time 4/4 f-.-> f-. f-. f-. f4-.-> r \time 3/4
    \mark\default d'8-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. d-.-> d-. d-. bf-.-> bf-. bf-. bf-.-> bf-. bf-. bf2.\f\>
    \mark\default e8-.\p e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-.
    e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-. e-.
    c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-.

    \alternative {
      \volta 1 {
        a-.\< a-. a-. a-. a-. a-. b-. b-. b-. b-. b-. b-.
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4\f-> a8 a4-> a8 a4-> a8 a4-> a8 a4\< a8 b~8 b c->( b) e->( f) g->( af)
        \mark\default a?->-.\fp\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-.
        e-.->\f e-. e-. e-.-> e-. e-. ef-.-> ef-. ef-. ef-.-> ef-. ef-.
        a8->-.\fp\< a-. a-. a-.-> a-. a-. g-.-> g-. g-. g-.-> g-. g-.
        e-.->\f e-. e-. e-.-> e-. e-. ef-.-> ef-. ef-. ef-.-> ef-. ef-.
        fs8-.->\<\p fs-. fs-. fs-.-> fs-. fs-. f?-.-> f-. f-. f-.-> f-. f-.
        gs-.-> gs-. gs-. gs-.-> gs-. gs-. g?-.-> g-. g-. g-.-> g-. g-.
        bf-.-> bf-. bf-. bf-.-> bf-. bf-. a-.-> a-. a-. a-.-> a-. a-.
        e2.\fp\<~2.
        \mark\default a,4-.->\fp r4 r R2.
        bf4.\< bf4. bf4.\f\> bf4.
        a4-.->\fp r4 r R2.
        bf4.\< bf4. bf4.\f\> bf4.
        \mark\default a4-.->\p r4 r R2.*15
      }
      \volta 2 {

        a8-.\< a-. a-. a-. a-. a-. b-. b-. b-. b-. b-. b-.
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a-.->\mf a-. a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-. a-.
        ef'-.-> ef-. ef-. ef-.-> ef-. ef-. d-.-> d-. d-. d-. d-. d-.
        a'-.->\< a-. a-. a-. a-. a-. g-. g-. g-. g-. g-. g-.
        \mark\default e8-.->\fp\< e-. e-. e-.-> e-. e-. ef-.-> ef-. ef-. ef-.-> ef-. ef-. d4-.->\mf r4 r R2.
        e8-.->\p\< e-. e-. e-.-> e-. e-. ef-.-> ef-. ef-. ef-.-> ef-. ef-. d4-.->\mf r4 r R2.*3
        \mark\default bf8-.->\mf\< bf-. bf-. bf-.-> bf-. bf-. a-.->\ff\> a-. a-. a-.-> a-. a-.
        \override TextSpanner.bound-details.left.text = "rall."
        f2.\fp\<\startTextSpan ~2.~2.~2.\ff R2.\fermata \stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  e'8-.^\markup{ \italic "quasi pizz."}\mp e'-. b-. d,-. d'-. a-. r4 R1 e8-. e'-. b-. d,-. d'4-. r4 R1
  \mark\default
  e,8-. e'-. b-. d,-. d'-. a-. d,4-. R1
  \fungalBass r4. a'8-. r4 b-.-> \fungalBass R1
  \fixed c {e8-. e'-. b-. d-. d'-. a-. r a-. r2 a8( g f g)} \mark\default
  \repeat unfold 3 {\fungalBass R1} \fixed c {e8-. e'-. b-. d-. d'-. a-. r a-. r2 a8( g f g)} \mark\default
  \fungalBass R1 e,8-. e'-. b-. d,-. d'4-. r4 R1 e,8-. e'-. b-. d,-. d'-. a-. d,4-. R1
  \repeat unfold 2 {\fungalBass R1}
  \fixed c {e8-. e'-. b-. d-. d'-. a-. r a-. r2 a8( g f g)}
  \fungalBass R1 \fungalBass R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 d4-.->\mf r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.-> \mark\default

  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->

  \mark\default
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 bf4-.-> r bf4.-.-> \time 9/8 c4-.-> r4 c4.-.-> c4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \mark\default

  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4.-.-> d4.-.-> d4.-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4.-.-> d4.-.-> d4.-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4.-.-> d4.-.-> d4.-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 e4-.-> r4 e4.-.-> e4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 e4.-.-> e4.-.-> e4.-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->

  \mark\default
  \time 7/8 d4-. d-. e4.-. d4-. d-. c4.-. d4-. d-. e4.-. \time 9/8 f-. e-. r
  \time 7/8 d4-. d-. e4.-. d4-. d-. c4.-. d4-. d-. e4.-. \time 9/8 f-. e-. r
  \time 7/8 d4-.\< d-. e4.-. d4-. d-. cs4.-. d4-. d-. e4.-. \time 9/8 e-. d-. cs-.

  \time 7/8 d4-.->\mf r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->

  \mark\default
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 bf4-.-> r bf4.-.-> \time 9/8 c4-.-> r4 c4.-.-> c4-.->

  \mark\default
  \time 7/8 bf4-.-> r bf4.-.-> \time 9/8 c4-.-> r4 c4.-.-> c4-.->
  \time 7/8 bf4-.-> r bf4.-.-> \time 9/8 c4-.-> r4 c4.-.-> c4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->

  \time 2/4 r4 d4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  c8-.\f \repeat unfold 23 {c8-.} \tuplet 3/2 {f,4-. f'-. f,-.} \tuplet 3/2 {f-. f'-. f,-.}
  \repeat unfold 16 {c'8-.} \tuplet 3/2 {gf4-. gf'-. gf,-.} \tuplet 3/2 {gf-. gf'-. gf,-.}
  \tuplet 3/2 {ef4-. ef'-. ef,-.} \tuplet 3/2 {ef-. ef'-. g,-.} \mark\default

  \repeat unfold 2 {c4-. c-. c-. c-. c8-. c-. r c-. c4-. c8-. c-. c4-. c-. c-. c-. af8-. af-. r f-. f4-. f8-. f-.}
  \mark\default

  c'2\ff c af af bf bf f' f c c f f ef ef g g \mark\default

  R1*4 c,4-.\f \repeat unfold 15 {c4-.} \mark\default

  c4-.\ff c-. c-. c-. R1
  c4-. c-. c-. c-. R1
  af4-. af-. af-. af-.

  \mark\default
  af8-.\p\< g-. af-. bf-. bf-. af-. bf-. cf-. cf-. bf-. cf-. df-. df-. cf-. df-. d-.
  ef-. df-. ef-. e-. e-. ef-. e-. fs-. fs-. e-. fs-. g-. g-. fs-. g-. g-.\fff \mark\default

  c,8-.\f \repeat unfold 23 {c8-.} \tuplet 3/2 {f,4-. f'-. f,-.} \tuplet 3/2 {f-. f'-. f,-.}
  \repeat unfold 16 {c'8-.} \tuplet 3/2 {gf4-. gf'-. gf,-.} \tuplet 3/2 {gf-. gf'-. gf,-.}
  \tuplet 3/2 {ef4-. ef'-. ef,-.} \tuplet 3/2 {ef-. ef'-. g,-.} \mark\default

  c4-.\ff c-. c-. c-. c8-. c-. r c-. c4-. c8-. c-.
  c4-. c-. c-. c-. af8-. af-. r f-. f4-. f8-. f-.
  \mark\default c'4-.-^ c-.-^ c-.-^ c-.-^ c8-.-^ c-.-^ r c-.-^ c4-.-^ c8-.-^ c-.-^
  c4-.-^ c-.-^ c-.-^ c-.-^ af8-.-^ af-.-^ r f-.-^ f4-.-^ f8-.-^ f-.-^

  c'2\fff g'\< g8-^\ff g-^ r g,-^ g4-^ c8-^ c-^ c4-^ r r2 \fine
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

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    a4->\fp a8 \repeat unfold 5 {a4-> a8} a4-> a e':32\<
    a,->\fp a8 a4-> a8 a4-> a8 a4-> a8 a4->\< a8 a4-> a8 \repeat unfold 2 {e'4-> e8}
    \time 4/4 f,4-> f8 f8->~8 f f4-> \time 3/4
    \mark\default \repeat unfold 4 {a4-> a8} \repeat unfold 2 {bf4-> bf8} bf2.:32\f\>
    \mark\default a4->\p a8 \repeat unfold 6 {a4-> a8} a4-> a16 a
    c4-> c8 c4-> c8 c4-> c8 c4-> c8

    \alternative {
      \volta 1 {
        a2.:32\< b:32 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4.\f e' r8 e16 e e4 c a4->\< a8 b4-> b8 c2.:32-> \mark\default a8\fp\< a a a a a b2.:32
        a8\ff a a a a a a a a a a a a\fp\< a a a a a b2.:32 a8\ff a a a a a a a a a a a R2.*6
        a8\fp\< a a a a a f f f f f f \mark\default
        a4\fp r4 r R2. bf2.:32\< ~2.:32\f\> R2.*2\! bf2.:32\< ~2.:32\f\>
        \mark\default R2.*3\! r4 r8 a16\ff a a a a a a4 r4 r R2.*2 a8 a a a a a a4 r4 r R2.*2
        r4 r8 a16 a a a a a a8 r r e'16 e e e e e e8 r r e16 e e e e e e2.:32\p\< ~2.:32
      }
      \volta 2 {
        a,2.:32\< b2.:32 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a4\mf-> a8 \repeat unfold 3 {a4-> a8} \repeat unfold 2 {ef'4-> ef8} a,4-> a8 a a4:32->
        a8\fp\< a a a4. c2.:32
        \mark\default e8\!->\f e e e-> e e b-> b b b-> b b a->\fp\< a a a a a c2.:32
        e8->\f e e e-> e e b-> b b b-> b b a4-> r4 r R2.*2 e'2.:32\p\<
        \override TextSpanner.bound-details.left.text = "rall."
        \mark\default bf8\fp\< bf bf bf bf bf a->\ff\>\startTextSpan
        a a a a a a->\fp\< a a a a a a-> a a a a a
        c-> c c c c c c\ff-> c c <c e>-^ q-^ q-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  R1*8 \mark\default
  R1*8 \mark\default
  R1*15 R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \mark\default

  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8

  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \time 2/4 R2\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  c8\f \repeat unfold 23 {c8} \tuplet 3/2 {f,4 f f} \tuplet 3/2 {f f f}
  \repeat unfold 16 {c'8}
  \repeat unfold 2 {\tuplet 3/2 {\repeat unfold 3 {df4}}}
  \repeat unfold 2 {\tuplet 3/2 {\repeat unfold 3 {ef4}}} \mark\default

  \repeat unfold 4 {c4 c c c c8 c r c c4 c8 c} \mark\default

  R1*8 \mark\default

  R1*3 c1:32\p\< ~c\ff R1*3 \mark\default

  R1*5 \mark\default R1*4 \mark\default

  c8\f \repeat unfold 23 {c8} \tuplet 3/2 {f,4 f f} \tuplet 3/2 {f f f}
  \repeat unfold 16 {c'8}
  \repeat unfold 2 {\tuplet 3/2 {\repeat unfold 3 {df4}}}
  \repeat unfold 2 {\tuplet 3/2 {\repeat unfold 3 {ef4}}} \mark\default

  c4\ff c c c c8 c r c c4 c8 c
  c4 c c c c8 c r c c4 c8 c \mark\default
  c4-^ c-^ c-^ c-^ c8-^ c-^ r c-^ c4-^ c8-^ c-^
  c4-^ c-^ c-^ c-^ c8-^ c-^ r c-^ c4-^ c8-^ c-^

  c8 c r c c c16 c c c c c c8-^ c-^ r c-^ c4-^ c8-^ c-^ c4-^ r r2 \fine
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
  R2.*3 {fs16->(\p b, cs a b g a e fs b, cs ds e2.)} R2.*7
  {\mark\default fs'16->\mp ( b, cs a b8-.) fs'16->( b, cs a b8-.)} R2.
  {b'16->(e, fs d e8-.) b'16->(e, fs d e8-.)} R2.
  {fs16-> ( b, cs a b8-.) fs'16->( b, cs a b8-.)} R2.
  {b'16->(e, fs d e8-.) b'16->(e, fs d e8-.)} R2.
  \mark\default
  {fs16->\mf ( b, cs a b8-.) fs'16->( b, cs a b8-.)} R2.
  {b'16->(e, fs d e8-.) b'16->(e, fs d e8-.)} R2.
  {fs16-> ( b, cs a b8-.) fs'16->( b, cs a b8-.)} R2.
  {b'16->(e, fs d e8-.) b'16->(e, fs d e8-.)} R2. \mark\default R2.*16 \mark\default R2.*8

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    e4\fp r4 r g4-. r4 c,8 r e4 r4 r d4-. r4 b8 r e4 r4 r g4-. r4 c,8 r a'2.\< g \time 4/4 f2 f \time 3/4
    \mark\default d4 d, f f' a, d bf4. bf bf2.\f
    \mark\default a4.\mf e'->~2. g4(-> f d) e(-> c b) a4.(-> d c b

    \alternative {
      \volta 1 {
        a4-.)-> r4 r R2.*5 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1) \mark\default R2.*2
        <a e'>8\ff q r q-. r4 <a ef'>8 q r q-. r4 R2.*2 <a e'>8 q r q-. r4 <a ef'>8 q r q-. r4 R2.*8
        \mark\default R2.*2
        <bf e>4.\p\< q q\> q <a e'>4-.\p r4 r R2. <bf e>4.\< q q\> q \mark\default <a e'>4-.\p r4 r R2.*7
        a8 r r a r4 a-.\< b-. a-. a16\f(b c8--) r a\p r4 a-. a-. a-.
        a8 r r a r4 a-.\< b-. a-. a16\f( c d8--) r a\p r4 a16\f( d e8--) r4 r
      }
      \volta 2 {
        a,4-.-> r4 r R2.*2 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        g'8\mf f d e c b ef4-. r r R2. a,4. d c b \mark\default R2.*2
        a4. d c b R2.*2 a4.\mp\< d c b b e d b \mark\default cs\ff fs e gs
        \override TextSpanner.bound-details.left.text = "rall."
        a,8\fp\< \startTextSpan a a a a a b b b b b b
        c c c c c c <c g'>\ff q q <c gs'>-^ q-^ q-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  R1*8 \mark\default
  R1*8 \mark\default
  R1*15 R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \mark\default

  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8

  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \time 2/4 R2\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  c1^"Tub. Bells"\fff af g f2 a c1 af c,2 df ef gf \mark\default

  c1 <c c,>8^"Glock." q r q q4 q8 q R1 <bf ef,>8 q r <c f,> q4 <a f>8 q
  R1 <c c,>8 q r q q4 q8 q R1 <bf ef,>8 q r <c f,> q4 <a f>8 q \mark\default

  g1\ff^"Tub. Bells" af f2 bf, c1 ef f ef2 f g1 \mark\default

  R1*8 \mark\default

  R1*5 \mark\default R1*4 \mark\default

  c1^"Tub. Bells"\fff af g f2 a c1 af c,2 df ef gf \mark\default

  c1 c8 c r c c4 c8 c c1 af8 af r bf bf4 a8 a \mark\default
  c1 c8 c r c c4 c8 c c1 af8 af r bf bf4 a8 a

  <g c,>8 q r q q q q q q-^ q-^ r q-^ q4-^ <g c>8-^ q-^ q4-^ r r2 \fine
}

scoreAXylo = \relative c' {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1*9 \mark \default R1*16 \mark\default R1*15
  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4
  R2.*4 \mark\default
  \fixed c'' {
    e,8^"Vibraphone"\mf b, e4 r4 b,,8 fs, cs4 r4
    c,8 g, d4 r4 a,,8 e, b,4 r4
    b,,8 fs, cs4 r4 g,,8 d, a,4 r4 a,,8 e, b,4 r4 c,8 g, e4 r4
    e,8 b, e4 r4 b,,8 fs, cs4 r4
    c,8 g, d4 r4 a,,8 e, b,4 r4
    b,,8 fs, cs4 r4 g,,8 d, a,4 r4 a,,8 e, b,4 r4 c,8 g, e4 r4
  }

  \time 6/8 \mark\default
  { e2.^"Tub. Bells"\mp b c a b g a c } { e2. b c a b g a c} \mark\default R2.
  fs,16^"Xylophone"\mf (b cs fs e fs cs' b cs fs e fs) R2.*3
  fs,,16 (b cs fs e fs cs' b cs fs e fs) R2. e,16 (fs b fs b cs fs, b cs b cs fs) \mark\default R2.
  fs,,16 (b cs fs e fs cs' b cs fs e fs) R2.*3 fs,,16 (b cs fs e fs cs' b cs fs e fs)
  R2.*2 \mark\default R2.*16 \mark\default R2.*8

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    R2.*8 \time 4/4 R1 \time 3/4 \mark\default R2.*4 \mark\default R2.*6

    \alternative {
      \volta 1 {
        R2.*6 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        \mark\default R2.*16 \mark\default R2.*8 \mark\default R2.*16
      }
      \volta 2 {
        R2.*8 \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        \mark\default R2.*10 \mark\default R2.*6 R2.\fermata
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  R1*4 \mark\default
  e,4\mf e fs8 g fs4 r2 r4 ds e b8 a b4 r R1
  e4 e fs8 g a4 r4 r8 g fs4 b8. as16 b4 g8 fs a4 r R1 \mark\default
  R1*8 \mark\default
  R1*15 R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8
  <a d,>4-.->\mf q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.-> \mark\default

  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 <b d,>4-.-> q4-. q-.-> q8-. q4-.->
  \time 7/8 <c d,>4-.-> q-. <b d,>-.-> q8-. \time 9/8 <af d,>4-.-> q4-. <a d,>-.-> q8-. q4-.->
  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 <g d>4-.-> q4-. q-.-> q8-. q4-.->
  \time 7/8 <bf d,>4-.-> q-. <c d,>-.-> q8-. \time 9/8 <a d,>4-.-> q4-. q-.-> q8-. q4-.->
  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q-.-> q8-. q4-.->

  \mark\default
  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 <b d,>4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 <c d,>4-.-> q-. <b d,>-.-> q8-. \time 9/8 <af d,>4-.-> q4-. <a d,>4-.-> q8-. <g d>4-.->
  \time 7/8 <d bf'>4-.-> q-. q-.-> q8-. \time 9/8 <g e>4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->
  \mark\default

  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 <b d,>4-.-> q8-. <a d,>4-.-> q8-. <g d>4-.-> q8-.
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 <b d,>4-.-> q8-. <a d,>4-.-> q8-. <g d>4-.-> q8-.
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 <b d,>4-.-> q8-. <a d,>4-.-> q8-. <g d>4-.-> q8-.
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 <a e>4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 <b e,>4-.-> q8-. <a d,>4-.-> q8-. <g c,>4-.-> q8-.
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->

  \mark\default
  \time 7/8 <a d,>4-. q-. <b e,>4.-. <a d,>4-. q-. <gs c,>4.-.
  <a d,>4-. q-. <b e,>4.-. \time 9/8 <c f,>-. <b e,>-. r
  \time 7/8 <a d,>4-. q-. <b e,>4.-. <a d,>4-. q-. <gs c,>4.-.
  <a d,>4-. q-. <b e,>4.-. \time 9/8 <c f,>-. <b e,>-. r
  \time 7/8 <a d,>4-.\< q-. <b e,>4.-. <a d,>4-. q-. <gs cs,>4.-.
  <a d,>4-. q-. <b e,>4.-. \time 9/8 <g e>-. <a d,>-. <a cs,>-.

  \time 7/8
  <a d,>4-.->\mf q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->

  \mark\default
  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 <b d,>4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 <c d,>4-.-> q-. <b d,>-.-> q8-. \time 9/8 <af d,>4-.-> q4-. <a d,>4-.-> q8-. <g d>4-.->
  \time 7/8 <d bf'>4-.-> q-. q-.-> q8-. \time 9/8 <g c>4-.-> q4-. q4-.-> q8-. q4-.->

  \mark\default
  \time 7/8 <ef bf'>4-.-> q-. q-.-> q8-. \time 9/8 <f c'>4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 <d bf'>4-.-> q-. q-.-> q8-. \time 9/8 <e c'>4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->

  \time 2/4 r4 q4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  c8-. \repeat unfold 7 {c8-.} \repeat unfold 8 {af8-.}
  \repeat unfold 8 {g8-.} \tuplet 3/2 {f4-. f'-. f,-.} \tuplet 3/2 {f-. f'-. f,-.}
  \repeat unfold 8 {c'8-.} \repeat unfold 8 {af8-.}
  \tuplet 3/2 {gf4-. gf'-. gf,-.} \tuplet 3/2 {gf-. gf'-. gf,-.}
  \tuplet 3/2 {ef4-. ef'-. ef,-.} \tuplet 3/2 {ef-. ef'-. g,-.} \mark\default

  R1*8 \mark\default

  c8\mf \tuplet 3/2 {\repeat unfold 3 {c16}}
  \repeat unfold 31 {c8 \tuplet 3/2 {\repeat unfold 3 {c16}}} \mark\default

  c4.\mf c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)}
  <c g>8 q r q q4 q8 q
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)}
  <c ef,>8 q r <c f,> q4 <c f,>8 q
  c4.\f c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)}
  <c g>8 q r q q4 q8 q
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)}
  <c ef,>8 q r <c f,> q4 <c f,>8 q
  \mark\default

  <c ef,>8.-.\f q16-.~8 q-.~16 q8.-. q4-. R1
  <c ef,>8.-.\f q16-.~8 q-.~16 q8.-. q4-. R1
  <af ef>8.-.\f q16-.~8 q-.~16 q8.-. q4-. \mark\default R1*4 \mark\default

  c8-. \repeat unfold 7 {c8-.} \repeat unfold 8 {af8-.}
  \repeat unfold 8 {g8-.} \tuplet 3/2 {f4-. f'-. f,-.} \tuplet 3/2 {f-. f'-. f,-.}
  \repeat unfold 8 {c'8-.} \repeat unfold 8 {af8-.}
  \tuplet 3/2 {gf4-. gf'-. gf,-.} \tuplet 3/2 {gf-. gf'-. gf,-.}
  \tuplet 3/2 {ef4-. ef'-. ef,-.} \tuplet 3/2 {ef-. ef'-. g,-.} \mark\default

  R1*4 \mark\default c4.\fff c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.

  <g c,>8 q r q q g16\fff g g g g g q8-^\ff q-^ r q-^ q4-^ <g c>8-^ q-^ q4-^ r r2 \fine
}

scoreADrum = \drummode {
  \global
  \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
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

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4
  \repeat volta 2 {
    sn8^\markup {\italic "siempre piano"} \fp-> sn sn sn sn sn sn sn sn sn sn16 sn sn sn
    sn8 sn sn sn sn sn sn sn sn sn sn4:32\p\<
    sn8\fp sn sn sn sn sn sn sn sn8 sn sn16 sn sn sn
    sn8->\< sn sn sn-> sn sn8 sn-> sn sn sn-> sn sn8 \time 4/4 sn-> sn sn sn-> sn sn8 sn-> sn
    \time 3/4 \mark\default sn8 sn sn sn sn sn16 sn sn8 sn sn sn sn sn16 sn sn8 sn sn sn sn sn
    \tuplet 3/2 {sn8\f\> sn sn} \tuplet 3/2 {sn sn sn} \tuplet 3/2 {sn sn sn}
    \mark\default sn8\ppp sn sn sn sn sn sn sn sn8 sn sn16 sn sn sn
    sn8 sn sn sn sn sn sn sn sn8 sn sn16 sn sn sn
    sn8 sn sn sn sn sn sn sn sn8 sn sn16 sn sn sn

    \alternative {
      \volta 1 {
        sn8-> sn sn sn-> sn sn sn-> sn sn sn-> sn sn
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        sn8 sn sn sn sn8 sn sn sn16 sn sn8 sn sn8 sn
        sn\<-> sn sn sn-> sn8 sn sn-> sn sn-> sn sn4:32
        \mark\default sn8\fp\< sn sn sn sn sn sn sn sn sn sn4:32
        sn8\ff sn r sn4.:32\p\< sn8\ff sn r sn4.:32\p\<
        sn8\fp\< sn sn sn sn sn sn sn sn sn sn4:32
        sn8\ff sn r sn4.:32\p\< sn8\ff sn r sn4.:32\p\<
        sn8\fp\< sn sn sn sn sn sn sn sn sn sn4:32
        sn8\fp\< sn sn sn sn sn sn sn sn sn sn4:32
        sn8\fp\< sn sn sn sn sn sn sn sn sn sn4:32
        sn8\fp\< sn sn sn sn sn sn2.:32
        \mark\default sn8\fp sn sn sn sn sn sn sn sn8 sn sn16 sn sn sn
        sn8 sn sn sn sn16 sn sn sn sn8 sn sn sn sn16 sn sn sn
        sn8\fp sn sn sn sn sn sn sn sn8 sn sn16 sn sn sn
        sn8 sn sn sn sn16 sn sn sn sn8 sn sn sn sn16 sn sn sn
        \mark\default sn8\fp sn sn sn sn sn sn8 sn sn sn sn sn
        sn8 sn sn sn sn sn sn8 sn sn sn16 sn sn16 sn sn sn
        sn8 sn sn sn sn sn sn8 sn sn sn sn16 sn sn sn
        sn8 sn sn sn sn sn sn2.:32\fp\<
        sn8\mf sn sn sn sn sn sn8 sn sn sn sn sn
        sn16 sn sn8 r sn4.:32 sn8 sn sn sn sn16 sn sn sn
        sn8 sn r sn16 sn sn sn sn sn sn8 sn r sn16 sn sn sn sn sn
        sn16\< sn sn8 r sn4.:32 sn16 sn sn8\fp\<~2:32
      }
      \volta 2 {
        sn8\!-> sn sn sn-> sn8 sn sn2.:32\<
        \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        sn8\mf sn sn sn sn8 sn sn sn sn sn sn8 sn
        sn sn sn sn sn8 sn sn sn sn sn16 sn sn4:32
        sn8\fp\< sn sn sn sn sn sn sn sn sn sn16 sn sn sn
        \mark\default sn8\fp\<-> sn sn sn-> sn sn sn-> sn sn sn sn16 sn sn sn
        sn8\fp\< sn sn sn sn sn sn sn sn sn sn16 sn sn sn
        sn8\fp\< sn sn sn sn sn sn sn sn sn sn16 sn sn sn
        sn8\fp\< sn sn sn sn sn sn8 sn sn sn sn16 sn sn sn
        sn8\mp\< sn sn sn sn sn sn8 sn sn sn sn16 sn sn sn
        \mark\default sn8\mf\< sn sn sn sn sn sn8 sn sn sn sn16 sn sn sn
        \override TextSpanner.bound-details.left.text = "rall."
        sn8\fp\<\startTextSpan sn sn sn sn sn sn sn sn sn sn sn
        sn sn sn sn sn sn sn\ff sn sn sn-^ sn-^ sn-^ r2\fermata\stopTextSpan r8 wbl8^"Shaker"\<\startTrillSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4

  r2\!\stopTrillSpan r4 r8 wbh^"Woodblocks"\pp\> wbh16 wbh8 wbh16 wbh8 wbh16 wbh~16 wbh wbh8 wbh16 wbh8 wbh16
  wbh4\! r r2
  r2 r4 cymc4:32^"Susp. cymbal" \pp\<\laissezVibrer \mark\default
  r2\! r4 r8 wbl16\pp\< wbl wbl-> wbl wbl wbl-> wbl wbl wbl-> wbl wbl wbl-> wbl wbl wbl8-> wbh16-> wbh
  wbh8->\> wbh16 wbh16->~16 wbh16 wbh8-> wbh16 wbh8-> wbh16 wbh8-> wbh16 wbh-> r2\! r4 r8 wbh\p\>
  wbh8-> wbh16 wbh16->~16 wbh16 wbh8-> wbh16 wbh8-> wbh16 wbh8-> wbh16 wbh->
  wbl8. wbl16~8 wbl8~16 wbl8. wbl8. wbl16
  r2\! r4 r8 wbh16\p\> wbh
  <<
    {s2 s4 cymc:32\laissezVibrer^\pp^\< <>^\!} \\
    {wbh16-> wbh wbh wbh-> wbh wbh wbh-> wbh wbh wbh-> wbh wbh wbh-> wbh wbh wbh->}
  >> \mark\default
  R1*2\! r2 r4 r8
  <<
    {s8 s2 s4 cymc:32\laissezVibrer^\pp^\< <>^\!} \\
    {wbh16\p\> wbh wbh16-> wbh wbh wbh-> wbh wbh wbh-> wbh wbh wbh-> wbh wbh wbh-> wbh wbl8->\p}
  >>
  wbl8. wbl16~8 wbl8~16 wbl8. wbl8. wbl16
  r2 r4 wbl8. wbl16
  wbl-> wbl wbl wbl-> wbl wbl wbl-> wbl wbl wbl-> wbl wbl wbl8-> wbl16-> wbl
  <<
    {cymc1:32\laissezVibrer\pp\< <>\!} \\
    {s2 s4 \tuplet 3/2 {r8 wbh->^\ppp wbl}}
  >>
  \mark\default
  \tuplet 3/2 {wbh-> r wbh->} \tuplet 3/2 {wbl wbh-> r}
  \tuplet 3/2 {wbh-> wbl wbh->} \tuplet 3/2 {r wbh-> wbl}
  wbh4-> r4 r4 r8 wbh\p\>
  wbh16 wbh8 wbh16 wbh8 wbh16 wbh~16 wbh wbh8 wbh16 wbh8 wbh16
  r2\! r4 wbl8. wbl16
  wbh8. wbh16~8 wbh8~16 wbh8. wbh8. wbh16
  R1*2 r4. wbh8 wbh8. wbh16 wbh8 wbh16 wbh
  wbh8 wbh16 wbh~16 wbh wbh8 wbh16 wbh8 wbh16 wbh8 wbh16 wbh
  r2 r4 r8 wbl
  wbl16 wbl8 wbl16 wbl8 wbl16 wbl~16 wbl wbl8 wbl16 wbl8 wbl16
  r2 \tuplet 3/2 { r8\repeat unfold 2 {wbh8}} \tuplet 3/2 {\repeat unfold 3 {wbh8}}
  wbl8. wbl16~8 wbl8~16 wbl8. wbl8. wbl16 r2 r4 wbh8. wbh16
  wbh8 wbh16 wbh~16 wbh wbh8 wbh16 wbh8 wbh16 wbh8 wbh16 wbh
  r wbh wbh8 wbh16 wbh8 wbh16
  \override TextSpanner.bound-details.left.text = "poco rit."
  \tuplet 3/2 {wbl8\mf\<\startTextSpan \repeat unfold 2 {wbl8}}
  \tuplet 3/2 {\repeat unfold 2 {wbl8} wbl\fermata\stopTextSpan} R1\!\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150

  \time 7/8 sn8\p-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn sn sn sn-> sn16 sn sn8 sn-> sn
  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn sn sn sn-> sn16 sn sn8 sn-> sn \mark\default

  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn sn sn sn-> sn16 sn sn8 sn-> sn
  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn16 sn sn8 sn8 sn16 sn sn8 sn16 sn sn sn sn sn
  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn sn sn sn-> sn16 sn sn8 sn-> sn
  \time 7/8 sn8-> sn sn sn sn16 sn sn sn sn sn \time 9/8 sn8-> sn8 sn sn sn-> sn16 sn-> sn8 sn-> sn
  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn sn sn sn-> sn16 sn sn8 sn-> sn

  \mark\default
  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn sn sn sn-> sn16 sn sn8 sn-> sn
  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn16 sn sn8 sn8 sn16 sn sn8 sn16 sn sn sn sn sn
  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn sn sn sn-> sn16 sn sn8 sn-> sn
  \time 7/8 sn8-> sn sn sn sn16 sn sn sn sn sn \time 9/8 sn8-> sn8 sn sn sn-> sn16 sn-> sn8 sn-> sn

  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn sn sn sn-> sn16 sn sn8 sn-> sn
  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn16 sn sn8 sn8 sn16 sn sn8 sn16 sn sn sn sn sn

  \mark\default

  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8
  \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 9/8 R1*9/8

  \mark\default
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8
  \time 7/8 R1*7/8*3 \time 9/8 R1*9/8

  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn sn sn sn-> sn16 sn sn8 sn-> sn
  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn sn sn sn-> sn16 sn sn8 sn-> sn

  \mark\default
  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn sn sn sn-> sn16 sn sn8 sn-> sn
  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn16 sn sn8 sn8 sn16 sn sn8 sn16 sn sn sn sn sn
  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn sn sn sn-> sn16 sn sn8 sn-> sn

  \mark\default
  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn16 sn sn8 sn8 sn16 sn sn8 sn16 sn sn sn sn sn
  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn16 sn sn8 sn8 sn16 sn sn8 sn16 sn sn sn sn sn
  \time 7/8 sn8-> sn sn sn sn-> sn16 sn sn8 \time 9/8 sn-> sn16 sn sn8 sn8 sn16 sn sn8 sn16 sn sn sn sn sn

  \time 2/4 r4 sn4-^\fermata

  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \time 4/4
  <<
    {
      sn4\f sn8 sn r sn sn sn16 sn sn4 sn8 sn r sn sn16 sn sn sn sn4 sn8 sn r sn sn sn16 sn
      sn\p\< \repeat unfold 15 {sn} sn4\f sn8 sn r sn sn sn16 sn sn4 sn8 sn r sn sn4
      \tuplet 3/2 {sn4-> sn sn} \tuplet 3/2 {sn4-> sn sn} \tuplet 3/2 {sn4-> sn sn} \tuplet 3/2 {sn4-> sn sn:32}
    }
    \\
    {
      bd4. bd8 r4 bd \repeat unfold 2 {bd4. bd8 r4 bd}
      \repeat unfold 2 {\tuplet 3/2 {\repeat unfold 3 {bd4}}}
      \repeat unfold 2 {bd4. bd8 r4 bd} \repeat unfold 4 {bd2}
    }
  >>

  \mark\default

  <<
    {
      \repeat unfold 4 {\repeat unfold 4 {sn8 \tuplet 3/2 {\repeat unfold 3 {sn16}}} sn8 sn r sn sn4 sn8 sn} \mark\default

      sn4\f sn8 sn r sn sn sn16 sn sn4 sn8 sn r sn sn sn16 sn
      sn4 sn8 sn r sn sn sn16 sn sn4 sn8 sn \repeat unfold 8 {sn16}
      sn4\f sn8 sn r sn sn sn16 sn sn4 sn8 sn r sn sn16 sn sn sn
      sn4 sn8 sn r sn sn sn16 sn sn4 sn8 sn \repeat unfold 8 {sn16} \mark\default

      sn8\mp^"Chains off or bongo" \tuplet 3/2 {\repeat unfold 3 {sn16}}
      \repeat unfold 3 {sn8 \tuplet 3/2 {\repeat unfold 3 {sn16}}} sn8 sn r sn sn4 sn8 sn
      sn8 \tuplet 3/2 {\repeat unfold 3 {sn16}}
      \repeat unfold 3 {sn8 \tuplet 3/2 {\repeat unfold 3 {sn16}}} sn8 sn r sn sn4 sn8 sn
      sn8^"Chains on" \tuplet 3/2 {\repeat unfold 3 {sn16}}
      \repeat unfold 7 {sn8 \tuplet 3/2 {\repeat unfold 3 {sn16}}}
      sn8 \tuplet 3/2 {\repeat unfold 3 {sn16}}
      \repeat unfold 3 {sn8 \tuplet 3/2 {\repeat unfold 3 {sn16}}} sn8 sn r sn:32\fp\<~2:32 \mark\default

      \tuplet 4/3 {sn4\f sn sn sn} sn r2 sn:32\p\<
      \tuplet 4/3 {sn4\f sn sn sn} sn r2 sn:32\p\<
      \tuplet 4/3 {sn4\f sn sn sn} sn \mark\default sn1:32\pp\<~1:32~1:32~1:32
    }
    \\
    {
      \repeat unfold 4 {\repeat unfold 4 {bd4} bd8 bd r bd bd4 bd8 bd}

      \repeat unfold 8 {bd2-> bd}

      s1 s1 s1 bd1:32\p\< bd4\f \repeat unfold 3 {bd4} bd8 bd r bd bd4 bd8 bd
      \repeat unfold 4 {bd4} bd8 bd r bd bd4 bd8 bd

      \repeat unfold 4 {bd4} r2 r4 bd
      \repeat unfold 4 {bd4} r2 bd:32
      \repeat unfold 4 {bd4} s1 s1 s1 s1
    }
  >> \mark\default

  <<
    {
      sn4\f sn8 sn r sn sn sn16 sn sn4 sn8 sn r sn sn16 sn sn sn sn4 sn8 sn r sn sn sn16 sn
      sn\p\< \repeat unfold 15 {sn} sn4\f sn8 sn r sn sn sn16 sn sn4 sn8 sn r sn sn4
      \tuplet 3/2 {sn4-> sn sn} \tuplet 3/2 {sn4-> sn sn} \tuplet 3/2 {sn4-> sn sn} \tuplet 3/2 {sn4-> sn sn:32}

      \repeat unfold 4 {sn8 \tuplet 3/2 {\repeat unfold 3 {sn16}}} sn8 sn r sn sn4 sn8 sn
      \repeat unfold 4 {sn8 \tuplet 3/2 {\repeat unfold 3 {sn16}}} sn8 sn r sn sn4 sn8 sn
      \mark\default
      sn8-^\ff \tuplet 3/2 {\repeat unfold 3 {sn16}}
      \repeat unfold 3 {sn8-^ \tuplet 3/2 {\repeat unfold 3 {sn16}}} sn8-^ sn r sn-^ sn4 sn8-^ sn
      \repeat unfold 4 {sn8-^ \tuplet 3/2 {\repeat unfold 3 {sn16}}} s2 cymc2:32\laissezVibrer^\mf^\< <>^\ff
    }
    \\
    {
      bd4. bd8 r4 bd \repeat unfold 2 {bd4. bd8 r4 bd}
      \repeat unfold 2 {\tuplet 3/2 {\repeat unfold 3 {bd4}}}
      \repeat unfold 2 {bd4. bd8 r4 bd} \repeat unfold 4 {bd2}

      \repeat unfold 4 {\repeat unfold 4 {bd4} bd8 bd r bd bd4 bd8 bd}
    }
  >>

  R1

  <<
    {
      sn8-^ sn-^ r sn-^ sn4-^ sn8-^ sn-^ sn4-^
    }
    \\
    {
      r2 r4 bd8-^ bd-^ bd4-^
    }
  >>
  r r2 \fine
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
  R2.*2 {a,,32(b cs d e fs g a b cs d e fs e d cs b a g fs e d cs b a4.-.) r4.}
  R2.*2 {
    \clef bass fs,32 (g a b c d e fs e fs g a
    \clef treble b c d e d e fs g a b c d \mark\default fs4.) r
  }
  d,8 r a' r b r {b'16->(e, fs d e8-.) b'16->(e, fs d e8-.)}
  {a,,32(b cs d e fs g a b cs d e fs e d cs b a g fs e d cs b a4.-.) r4.} R2.
  {b''16->(e, fs d e8-.) b'16->(e, fs d e8-.)} {fs-.( e-. d-.) e-.( b-. a-.)}
  \mark\default
  \repeat unfold 3 {\greenPathRightHand} \greenPathRightHandB
  \repeat unfold 3 {\greenPathRightHand} \greenPathRightHandB

  \greenPathPatternB

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    <a' e a,>8\fp r r  e, r4 g4 r4 e8 r q r r e r4 d'8 c a c b g
    q r r e r4 g4 r4 e8 r e\< e e <d f> q q <d e g> q q <d f a> q q
    \time 4/4 <d g b> q q q <d a' c> q q q \time 3/4
    \mark\default d'4 d, f f' a, d bf4. bf bf2.\f
    \mark\default a4.\mf e'->~2. g4 f d e c b a4.-> d c b

    \alternative {
      \volta 1 {
        d\p\< d, e' e, \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a\f e'->~2. g4\< f d e c b \mark\default a4. d c b
        <a e a,>8\ff q r q r4 <a ef a,>8 q r q r4
        a4. d  c b
        <a e a,>8\ff q r q r4 <a ef a,>8 q r q r4
        a4.\p\< d c b b e d b cs fs e ds a8->\fp\< a a a-> a a b-> b b c-> c c
        \mark\default a4\fp r4 r R2.
        <bf bf,>8->\< q q q-> q q q->\> q q q-> q q <a a,>4->\p r4 r R2.
        <bf bf,>8->\< q q q-> q q q->\> q q q-> q q \mark\default <a a,>4->\p r4 r
        R2.*2 r4 r8 a,16\ff a' a, a' a, a' a,4 r4 r R2.*2
        <b'' b,>8-> q <a a,>8-> q <g g,>8-> q <f f,>4-> r4 r R2.*7
      }
      \volta 2 {
        d4.\< d, e' e, \once \set Score.voltaSpannerDuration = #(ly:make-moment 1)
        a\mf e'->~2. g4 f d e c b a4. d c b
        \mark\default a4 r4 r R2.
        a4. d c b a4 r4 r R2.
        a'4.\p\< d-> c\mf\> b-> b,\mp\< e-> d\f\> b-> \mark\default cs,\mf\< fs-> e\ff\> ds'->
        \override TextSpanner.bound-details.left.text = "rall."
        <a a'>8\fp\< \startTextSpan q q q q q <b b'> q q q q q
        <c c'> q q q q q <g' g'>\ff q q <gs gs'>-^ q-^ q-^ R2.\fermata\stopTextSpan
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  \repeat percent 4 {e,4->\p\>^"Harp" e e-> e <>\!} \mark\default
  \repeat percent 8 {e4->\p\> e e-> e <>\!} \mark\default
  e4->\p\> e e-> e e4->\p e8 ds~8 e->~8 ds e4-> e e-> e e4-> e e-> g
  e4-> e e-> e e4-> e e-> e8 ds e4-> b8-. a-. b4-. r e4->\p\> e e-> e
  \mark\default
  \override TextSpanner.bound-details.left.text = "poco rit."
  \repeat percent 15 {e4->\p\> e e-> e <>\!} e4->\p\> e e->\startTextSpan e\fermata\stopTextSpan R1\!\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8
  <a d,>4-.->\mp q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.-> \mark\default

  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 <b d,>4-.-> q4-. q-.-> q8-. q4-.->
  \time 7/8 <c d,>4-.-> q-. <b d,>-.-> q8-. \time 9/8 <af d,>4-.-> q4-. <a d,>-.-> q8-. q4-.->
  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 <g d>4-.-> q4-. q-.-> q8-. q4-.->
  \time 7/8 <bf d,>4-.-> q-. <c d,>-.-> q8-. \time 9/8 <a d,>4-.-> q4-. q-.-> q8-. q4-.->
  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q-.-> q8-. q4-.->

  \mark\default
  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 <b d,>4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 <c d,>4-.-> q-. <b d,>-.-> q8-. \time 9/8 <af d,>4-.-> q4-. <a d,>4-.-> q8-. <g d>4-.->
  \time 7/8 <d bf'>4-.-> q-. q-.-> q8-. \time 9/8 <g e>4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->
  \mark\default

  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 <b d,>4-.-> q8-. <a d,>4-.-> q8-. <g d>4-.-> q8-.
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 <b d,>4-.-> q8-. <a d,>4-.-> q8-. <g d>4-.-> q8-.
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 <b d,>4-.-> q8-. <a d,>4-.-> q8-. <g d>4-.-> q8-.
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 <a e>4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 <b e,>4-.-> q8-. <a d,>4-.-> q8-. <g c,>4-.-> q8-.
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->

  \mark\default
  \time 7/8 <a d,>4-. q-. <b e,>4.-. <a d,>4-. q-. <gs c,>4.-.
  <a d,>4-. q-. <b e,>4.-. \time 9/8 <c f,>-. <b e,>-. r
  \time 7/8 <a d,>4-. q-. <b e,>4.-. <a d,>4-. q-. <gs c,>4.-.
  <a d,>4-. q-. <b e,>4.-. \time 9/8 <c f,>-. <b e,>-. r
  \time 7/8 <a d,>4-. q-. <b e,>4.-. <a d,>4-. q-. <gs cs,>4.-.
  <a d,>4-. q-. <b e,>4.-.\time 9/8 <g e>-. <a d,>-. <a cs,>-.

  \time 7/8
  <a d,>4-.->\mf q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->

  \mark\default
  \time 7/8 q4-.-> q-. q-.-> q8-. \time 9/8 <b d,>4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 <c d,>4-.-> q-. <b d,>-.-> q8-. \time 9/8 <af d,>4-.-> q4-. <a d,>4-.-> q8-. <g d>4-.->
  \time 7/8 <d bf'>4-.-> q-. q-.-> q8-. \time 9/8 <g c>4-.-> q4-. q4-.-> q8-. q4-.->

  \mark\default
  \time 7/8 <ef bf'>4-.-> q-. q-.-> q8-. \time 9/8 <f c'>4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 <d bf'>4-.-> q-. q-.-> q8-. \time 9/8 <e c'>4-.-> q4-. q4-.-> q8-. q4-.->
  \time 7/8 <a d,>4-.-> q-. q-.-> q8-. \time 9/8 q4-.-> q4-. q4-.-> q8-. q4-.->

  \time 2/4 r4 q4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  c8-.\f^\markup {\italic "8vb e 8va ad lib"} \repeat unfold 7 {c8-.} \repeat unfold 8 {af8-.}
  \repeat unfold 8 {g8-.} \tuplet 3/2 {f4-. f'-. f,-.} \tuplet 3/2 {f-. f'-. f,-.}
  \repeat unfold 8 {c'8-.} \repeat unfold 8 {af8-.}
  \tuplet 3/2 {gf4-. gf'-. gf,-.} \tuplet 3/2 {gf-. gf'-. gf,-.}
  \tuplet 3/2 {ef4-. ef'-. ef,-.} \tuplet 3/2 {ef-. ef'-. g,-.} \mark\default

  R1*8 \mark\default

  c16\fp( bf g bf c bf g bf c bf g bf c bf g bf
  c bf g bf c bf g bf c bf g bf c bf g bf
  c bf g bf c bf g bf c bf g bf c bf g bf
  c bf g bf c bf g bf c bf g bf c bf g bf
  c bf g bf c bf g bf c bf g bf c bf g bf
  c bf g bf c bf g bf c bf g bf c bf g bf
  c bf g bf c bf g bf c bf g bf c bf g bf
  c bf g bf c bf g bf c bf g bf c bf g bf)
  \mark\default

  c4.\p c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4.\f c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  \mark\default

  ef8.-.\ff ef16-.~8 ef-.~16 ef8.-. ef4-. af8-.\mf\< g-. f-. ef-. f-. ef-. d-. df-.
  ef8.-.\ff ef16-.~8 ef-.~16 ef8.-. ef4-. ef8-.\mf\< df-. cf-. bf-. df-. cf-. bf-. a-.
  ef'8.-.\ff ef16-.~8 ef-.~16 ef8.-. ef4-. \mark\default

  af,,8-.\p\< g-. af-. bf-. bf-. af-. bf-. cf-. cf-. bf-. cf-. df-. df-. cf-. df-. d-.
  ef-. df-. ef-. e-. e-. ef-. e-. fs-. fs-. e-. fs-. g-. g-. fs-. g-. g-.\fff \mark\default
  \mark\default

  c8\f-> \repeat unfold 7 {c8-.} \repeat unfold 8 {af8-.}
  \repeat unfold 8 {g8-.} \tuplet 3/2 {f4-. f'-. f,-.} \tuplet 3/2 {f-. f'-. f,-.}
  \repeat unfold 8 {c'8-.} \repeat unfold 8 {af8-.}
  \tuplet 3/2 {gf4-. gf'-. gf,-.} \tuplet 3/2 {gf-. gf'-. gf,-.}
  \tuplet 3/2 {ef4-. ef'-. ef,-.} \tuplet 3/2 {ef-. ef'-. g,-.} \mark\default

  R1*4 \mark\default c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.
  c4. c16( d) ef8-. d16( c d ef \tuplet 3/2 {d ef d)} c8-. c-. r c-. c4-. c8-. c-.

  c4-.\fff r8 c16\< c c8 c16 c c c c c g'8-^\ff g-^ r g-^ g4-^ c8-^ c-^ c4-^ r r2 \fine
}

scoreALeft = \relative c, {
  \global
  % Music goes here
  \section \sectionLabel "Dirtmouth" \tempo "Abandoned" 4 = 88 \time 4/4
  R1 {e8\sustainOn b' e fs g b g fs e, b' e fs g b g fs}\sustainOff
  {e,\sustainOn b' e fs g b g fs e, b' e fs g b g fs}\sustainOff
  {e,\sustainOn b' e fs g b g fs d, a' e' fs g b g fs}\sustainOff
  {
    \override TextSpanner.bound-details.left.text = "poco rit." c,\sustainOn g' e' fs g b g fs
    c,\startTextSpan g' e' g  c g\sustainOff\stopTextSpan <<{<fs b>4} \\ {<d, a'>}>>
  }
  {e8^\markup{\bold "a tempo"}\sustainOn^\mp b' e fs g b g fs e, b' e fs g b g fs}\sustainOff
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

  \section \sectionLabel "Greenpath" \tempo "Mossy" 4 = 83 \time 3/4

  \override MultiMeasureRest.staff-position = 0
  \clef bass
  \override MultiMeasureRest.staff-position = 0
  e,8\sustainOff->^\markup {\musicglyph "pedal.Ped" \italic "ad lib"} e-> e2-> R2. e8-> e-> e2-> R2.
  \greenPathLeftHand \greenPathLeftHand

  \time 6/8
  \greenPathLeftHand \greenPathLeftHand
  e,,4. e e e e e e e e e e e e e fs g c c d d e e a, a a a b b c c c e

  \repeat unfold 3 {\greenPathLeftHandB}

  \section \sectionLabel "Hornet" \tempo "Swift" 4 = 145 \time 3/4 \key a \minor
  \repeat volta 2 {
    <a, a,>4-> a'8 \repeat unfold 5 {a4 a8} f4 f g,
    q4-> a'8 \repeat unfold 5 {a4 a8} \repeat unfold 2 {g4 g8}
    \time 4/4 f4 f f f \time 3/4 d d' a f a c bf,8 f' a bf c d f2.->
    q4-> a,8 \repeat unfold 7 {a4 a8}
    q4-> a8 a4 a8 a4 a8 a4 a8

    \alternative {
      \volta 1 {
        d,4. d, e' e, q4-> a'8 a4 a8 a4 a a
        <g g'> <f f'> <d d'> <e e'> <c c'> <b b'> <a a'>4. <fs fs'> <g g'> <g g'>
        <a e a,>8 q r q r4 <a ef a,>8 q r q r4
        <g g,>4. <f f,> <d d,> <e e,>
        <a e a,>8 q r q r4 <a ef a,>8 q r q r4
        <fs fs'>8-> q q q-> q q <f? f'?>8-> q q q-> q q
        <gs gs'>8-> q q q-> q q <g? g'?>8-> q q q-> q q
        <bf bf'>8-> q q q-> q q <a a'>8-> q q q-> q q
        <f f'>8-> q q q-> q q q-> q q q-> q q <a a'>4-> r4 r R2.
        <e e'>8-> q q q-> q q q-> q q q-> q q <a, a'>4-> r4 r R2.
        <e' e'>8-> q q q-> q q q-> q q q-> q q <a, a'>4-> r4 r R2.*2
        r4 r8 a'16\ff a, a' a, a' a, a'4 r4 r R2.*2
        <b, b'>8-> q <a a'>-> q <g g'>-> q <f f'>4-> r4 r R2.*7
      }
      \volta 2 {
        d''4. d, e' e, <a a,>4-> a'8 \repeat unfold 3 {a4 a8} \repeat unfold 2 {ef4 ef8} d4 d d
        a8-> a a a a a g g g g g g e4 r4 r R2.
        a8-> a a a a a g g g g g g e4 r4 r R2.
        <fs fs'>8-.-> q-. q-. q-.-> q-. q-. <f? f'?>-.-> q-. q-. q-.-> q-. q-.
        <gs gs'>-.-> q-. q-. q-.-> q-. q-. <g? g'?>-.-> q-. q-. q-.-> q-. q-.
        <bf bf'>-.-> q-. q-. q-.-> q-. q-. <a a'>-.-> q-. q-. q-.-> q-. q-.
        <f f'>8 q q q q q q q q q q q q q q q q q q q q q-^ q-^ q-^ R2.\fermata
      }
    }
  }

  \section \sectionLabel "Fungal Wastes" \tempo "Gloomy" 4 = 80 \time 4/4
  \key a \minor

  e'8-.^\markup{ \italic "quasi pizz."}\mp e'-. b-. d,-. d'-. a-. r4 R1 e8-. e'-. b-. d,-. d'4-. r4 R1
  \mark\default
  e,8-. e'-. b-. d,-. d'-. a-. d,4-. R1
  \fungalBass r4. a'8-. r4 b-.-> \fungalBass R1
  \fixed c {e8-. e'-. b-. d-. d'-. a-. r a-. r2 a8( g f g)} \mark\default
  \repeat unfold 3 {\fungalBass R1} \fixed c {e8-. e'-. b-. d-. d'-. a-. r a-. r2 a8( g f g)} \mark\default
  \fungalBass R1 e,8-. e'-. b-. d,-. d'4-. r4 R1 e,8-. e'-. b-. d,-. d'-. a-. d,4-. R1
  \repeat unfold 2 {\fungalBass R1}
  \fixed c {e8-. e'-. b-. d-. d'-. a-. r a-. r2 a8( g f g)}
  \fungalBass R1 \fungalBass R1\fermata R1\fermata

  \section \sectionLabel "Dung Defender" \tempo "Bouncy" 4 = 150 \key d \minor

  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.-> \mark\default

  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->

  \mark\default
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 bf4-.-> r bf4.-.-> \time 9/8 c4-.-> r4 c4.-.-> c4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \mark\default

  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4.-.-> d4.-.-> d4.-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4.-.-> d4.-.-> d4.-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4.-.-> d4.-.-> d4.-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 e4-.-> r4 e4.-.-> e4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 e4.-.-> e4.-.-> e4.-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->

  \mark\default
  \time 7/8 d4-. d-. e4.-. d4-. d-. c4.-. d4-. d-. e4.-. \time 9/8 f-. e-. r
  \time 7/8 d4-. d-. e4.-. d4-. d-. c4.-. d4-. d-. e4.-. \time 9/8 f-. e-. r
  \time 7/8 d4-. d-. e4.-. d4-. d-. cs4.-. d4-. d-. e4.-. \time 9/8 e-. d-. cs-.

  \time 7/8 d4-.->\mf r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->

  \mark\default
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->
  \time 7/8 bf4-.-> r bf4.-.-> \time 9/8 c4-.-> r4 c4.-.-> c4-.->

  \mark\default
  \time 7/8 bf4-.-> r bf4.-.-> \time 9/8 c4-.-> r4 c4.-.-> c4-.->
  \time 7/8 bf4-.-> r bf4.-.-> \time 9/8 c4-.-> r4 c4.-.-> c4-.->
  \time 7/8 d4-.-> r d4.-.-> \time 9/8 d4-.-> r4 d4.-.-> d4-.->

  \time 2/4 r4 d4-.-^\fermata


  \section \sectionLabel "Hive Knight" \tempo "Military" 4 = 120 \key c \minor \time 4/4

  c8-. c-. c-. c-> r4 c-.-> \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 3/2 {bf4-. bf-. bf-.} \tuplet 3/2 {a-. a-. a-.}
  \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {df-. df-. df-.}
  \tuplet 3/2 {ef-. ef-. ef-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  R1*4 \repeat unfold 2 {c,4-. c-. c-. c-. c8-. c-. r c-. c4-. c8-. c-.} \mark\default

  c2 c4 d ef2 d4 c \tuplet 3/2 {d4 ef d} \tuplet 3/2 {d ef d} c1
  c2 c4 d \tuplet 3/2 {f ef f} g2 \tuplet 3/2 {g4 f g} a f g1 \mark\default

  R1*4 c,4-. \repeat unfold 15 {c4-.} \mark\default

  c4-. c-. c-. c-. R1
  c4-. c-. c-. c-. R1
  af4-. af-. af-. af-.

  \mark\default
  af8-. g-. af-. bf-. bf-. af-. bf-. cf-. cf-. bf-. cf-. df-. df-. cf-. df-. d-.
  ef-. df-. ef-. e-. e-. ef-. e-. fs-. fs-. e-. fs-. g-. g-. fs-. g-. g-. \mark\default

  c8-. c-. c-. c-> r4 c-.-> \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 3/2 {bf4-. bf-. bf-.} \tuplet 3/2 {a-. a-. a-.}
  \repeat unfold 2 {c8-. c-. c-. c-> r4 c-.->}
  \tuplet 3/2 {c4-. c-. c-.} \tuplet 3/2 {df-. df-. df-.}
  \tuplet 3/2 {ef-. ef-. ef-.} \tuplet 3/2 {gf-. gf-. g-.} \mark\default

  c,4-.^\ff c-. c-. c-. c8-. c-. r c-. c4-. c8-. c-.
  c4-. c-. c-. c-. af8-. af-. r f-. f4-. f8-. f-.
  \mark\default c'4-.-^ c-.-^ c-.-^ c-.-^ c8-.-^ c-.-^ r c-.-^ c4-.-^ c8-.-^ c-.-^
  c4-.-^ c-.-^ c-.-^ c-.-^ af8-.-^ af-.-^ r f-.-^ f4-.-^ f8-.-^ f-.-^

  c2 g' g8-^ g-^ r c,-^ c4-^ c8-^ c-^ c4-^ r r2 \fine
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

scoreATromboneIIIPart = \new Staff \with {
  instrumentName = "Trombone III"
  shortInstrumentName = "Trb. III"
  midiInstrument = "trombone"
} { \clef bass \scoreATromboneIII }

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



%
\book {
  \bookOutputName "Part 00 - Score"
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
          \scoreATromboneIIIPart
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
      #(layout-set-staff-size 12)
    }
  }
  \paper {
    #(set-paper-size "a3")
    system-separator-markup = \slashSeparator
  }
}
% MIDI !!
\book {
  \bookOutputName "Part 00 - Score"
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
        \scoreAEflatClarinetPart
        \new StaffGroup \with {
          systemStartDelimiter = #'SystemStartSquare
        } <<
          \scoreAClarinetIPart
          \scoreAClarinetIIPart
          \scoreAClarinetIIIPart
        >>
        \scoreABassClarinetPart
      >>
      \new StaffGroup <<
        \new StaffGroup \with {
          systemStartDelimiter = #'SystemStartSquare
        } <<
          \scoreAAltoSaxIPart
          \scoreAAltoSaxIIPart
        >>
        \scoreATenorSaxPart
        \scoreABaritoneSaxPart
      >>
      \new StaffGroup <<
        \new StaffGroup \with {
          systemStartDelimiter = #'SystemStartSquare
        } <<
          \scoreATrumpetBbIPart
          \scoreATrumpetBbIIPart
        >>
        \new StaffGroup \with {
          systemStartDelimiter = #'SystemStartSquare
        } <<
          \scoreAHornFIPart
          \scoreAHornFIIPart
        >>
        \new StaffGroup \with {
          systemStartDelimiter = #'SystemStartSquare
        } <<
          \scoreATromboneIPart
          \scoreATromboneIIPart
          \scoreATromboneIIIPart
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
    \midi { }
  }
}

%}
%
\book {
  \bookOutputName "Part 01 - Piccolo"
  \score {
    \compressMMRests {\scoreAPiccoloPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #3
  }
}
\book {
  \bookOutputName "Part 02 - FluteI"
  \score {
    \compressMMRests {\scoreAFluteIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #3
  }
}
\book {
  \bookOutputName "Part 03 - FluteII"
  \score {
    \compressMMRests {\scoreAFluteIIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #3
  }
}
\book {
  \bookOutputName "Part 04 - Oboe"
  \score {
    \compressMMRests {\scoreAOboePart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #3
  }
}
\book {
  \bookOutputName "Part 05 - Bassoon"
  \score {
    \compressMMRests {\scoreABassoonPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #4
  }
}
\book {
  \bookOutputName "Part 06 - EflatClarinet"
  \score {
    \compressMMRests {
      \transpose ef c
      \scoreAEflatClarinetPart
    }
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #3
  }
}
\book {
  \bookOutputName "Part 07 - ClarinetI"
  \score {
    \compressMMRests {
      \transpose bf c'
      \scoreAClarinetIPart
    }
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #3
  }
}
\book {
  \bookOutputName "Part 08 - ClarinetII"
  \score {
    \compressMMRests {
      \transpose bf c'
      \scoreAClarinetIIPart
    }
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #3
  }
}
\book {
  \bookOutputName "Part 09 - ClarinetIII"
  \score {
    \compressMMRests {
      \transpose bf c'
      \scoreAClarinetIIIPart
    }
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #3
  }
}
\book {
  \bookOutputName "Part 10 - BassClarinet"
  \score {
    \compressMMRests {
      \transpose bf c'
      \scoreABassClarinetPart
    }
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #3
  }
}
\book {
  \bookOutputName "Part 11 - AltoSaxI"
  \score {
    \compressMMRests {
      \transpose ef c'
      \scoreAAltoSaxIPart
    }
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #3
  }
}
\book {
  \bookOutputName "Part 12 - AltoSaxII"
  \score {
    \compressMMRests {
      \transpose ef c'
      \scoreAAltoSaxIIPart
    }
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #2
  }
}
\book {
  \bookOutputName "Part 13 - TenorSax"
  \score {
    \compressMMRests {
      \transpose bf c'
      \scoreATenorSaxPart
    }
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #2
  }
}
\book {
  \bookOutputName "Part 14 - BaritoneSax"
  \score {
    \compressMMRests {
      \transpose ef c'
      \scoreABaritoneSaxPart
    }
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #2
  }
}
\book {
  \bookOutputName "Part 15 - TrumpetBbI"
  \score {
    \compressMMRests {
      \transpose bf c'
      \scoreATrumpetBbIPart
    }
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #2
  }
}
\book {
  \bookOutputName "Part 16 - TrumpetBbII"
  \score {
    \compressMMRests {
      \transpose bf c'
      \scoreATrumpetBbIIPart
    }
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #2
  }
}
\book {
  \bookOutputName "Part 17 - HornFI"
  \score {
    \compressMMRests {
      \transpose f c'
      \scoreAHornFIPart
    }
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #2
  }
}
\book {
  \bookOutputName "Part 18 - HornFII"
  \score {
    \compressMMRests {
      \transpose f c'
      \scoreAHornFIIPart
    }
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #2
  }
}
\book {
  \bookOutputName "Part 19 - TromboneI"
  \score {
    \compressMMRests {\scoreATromboneIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #2
  }
}
\book {
  \bookOutputName "Part 20 - TromboneII"
  \score {
    \compressMMRests {\scoreATromboneIIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #2
  }
}
\book {
  \bookOutputName "Part 21 - TromboneIII"
  \score {
    \compressMMRests {\scoreATromboneIIIPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #2
  }
}
\book {
  \bookOutputName "Part 22 - Euphonium"
  \score {
    \compressMMRests {\scoreAEuphoniumPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #3
  }
}
\book {
  \bookOutputName "Part 23 - Tuba"
  \score {
    \compressMMRests {\scoreATubaPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #3
  }
}
\book {
  \bookOutputName "Part 24 - Timpani"
  \score {
    \compressMMRests {\scoreATimpaniPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #2
  }
}
\book {
  \bookOutputName "Part 25 - Glockenspiel"
  \score {
    \compressMMRests {\scoreAGlockenspielPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #2
  }
}
\book {
  \bookOutputName "Part 26 - Xylo"
  \score {
    \compressMMRests {\scoreAXyloPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #2
  }
}
\book {
  \bookOutputName "Part 27 - Drums"
  \score {
    \compressMMRests {\scoreADrumsPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #4
  }
}
%
%
\book {
  \bookOutputName "Part 28 - Piano"
  \score {
    \compressMMRests {\scoreAPianoPart}
    \layout {
      \override MultiMeasureRest.expand-limit = 1
      #(layout-set-staff-size 15)
    }
  }
  \paper {
    #(set-paper-size "letter")
    %page-count = #6
  }
}
%}
