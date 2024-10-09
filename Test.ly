\version "2.24.4"
\language "english"

#(define (naturalize-pitch p)
   (let ((o (ly:pitch-octave p))
         (a (* 4 (ly:pitch-alteration p)))
         ;; alteration, a, in quarter tone steps,
         ;; for historical reasons
         (n (ly:pitch-notename p)))
     (cond
      ((and (> a 1) (or (eqv? n 6) (eqv? n 2)))
       (set! a (- a 2))
       (set! n (+ n 1)))
      ((and (< a -1) (or (eqv? n 0) (eqv? n 3)))
       (set! a (+ a 2))
       (set! n (- n 1))))
     (cond
      ((> a 2) (set! a (- a 4)) (set! n (+ n 1)))
      ((< a -2) (set! a (+ a 4)) (set! n (- n 1))))
     (if (< n 0) (begin (set! o (- o 1)) (set! n (+ n 7))))
     (if (> n 6) (begin (set! o (+ o 1)) (set! n (- n 7))))
     (ly:make-pitch o n (/ a 4))))

#(define (naturalize music)
   (let ((es (ly:music-property music 'elements))
         (e (ly:music-property music 'element))
         (p (ly:music-property music 'pitch)))
     (if (pair? es)
         (ly:music-set-property!
          music 'elements
          (map naturalize es)))
     (if (ly:music? e)
         (ly:music-set-property!
          music 'element
          (naturalize e)))
     (if (ly:pitch? p)
         (begin
          (set! p (naturalize-pitch p))
          (ly:music-set-property! music 'pitch p)))
     music))

naturalizeMusic =
#(define-music-function (m)
   (ly:music?)
   (naturalize m))

#(set-global-staff-size 14)
\paper {
  indent = 3.0\cm  % add space for instrumentName
  short-indent = 1.5\cm  % add less space for shortInstrumentName
}

\header {
  title = "Hollow Knight — Medley"
  composer = "Christopher Larkin"
  arranger = "arr. Alexandre Simard"
}

pattern = {
  c d e f g fs g2
}

% Piccolo and flutes
piccolo = \relative c'' {
  \clef "treble^8"
  \key e \minor
  R1*40
}
fluteOne = \relative c' {
  \key e \minor
  R1*62
}
fluteTwo = \relative c' {
  \key e \minor
  R1*81
}

% Double reeds
oboeOne = \relative c' {
  \key e \minor
  R1*33
}
oboeTwo = \relative c' {
  \key e \minor
  R1*303
}
bassoon = \relative c {
  \clef bass
  \key e \minor
  R1*9
}

% Clarinets
clarinetEb = \transpose ef c {
  \relative c' {
    \key e \minor
    R1*81
  }
}
clarinetOne = \transpose c d {
  \relative c' {
    \key e \minor
    R1*81
  }
}
clarinetTwo = \transpose c d {
  \relative c' {
    \key e \minor
    R1*81
  }
}
clarinetThree = \transpose c d {
  \relative c' {
    \key e \minor
    R1*81
  }
}
bassClarinet = \transpose c d {
  \relative c {
    \clef bass
    \key e \minor
    R1*64
  }
}

% saxophones
saxOne = \transpose c a \relative c {
  \key e \minor
  R1*17
}
saxTwo = \transpose c a \relative c {
  \key e \minor
  R1*77
}
tenor = \transpose c d \relative c {
  \clef "treble_8"
  \key e \minor
  R1*81
}
baritone = \transpose c a \relative c {
  \clef bass
  \key e \minor
  R1*81
}

% piano
upper = \relative c' {
  \clef treble
  \key e \minor
  R1 {fs1~fs2 \tuplet 3/2 {fs4 g a} fs2.. b,8 cs1} {fs~fs2 \tuplet 3/2 {fs4 g a}}
}
lower = \relative c, {
  \clef bass
  \key e \minor
  R1
  {e8 b' e fs g b g fs} {e, b' e fs g b g fs} {e, b' e fs g b g fs} {e, b' e fs g b g fs} {e, b' e fs g b g fs} 
}

% trumpets
trumpetOne = \transpose c d {
  \relative c' {
    \key e \minor
    R1*93
  }
}
trumpetTwo = \transpose c d {
  \relative c' {
    \key e \minor
    R1*97
  }
}
trumpetThree = \transpose c d {
  \relative c' {
    \key e \minor
    R1*100
  }
}

% Horns
hornOne = \transpose f c {
  \relative c' {
    \key e \minor
    R1*101
  }
}
hornTwo = \transpose f c {
  \relative c' {
    \key e \minor
    R1*101
  }
}

% Trombones
tromboneOne = \relative c {
  \clef bass
  \key e \minor
  R1*93
}
tromboneTwo = \relative c {
  \clef bass
  \key e \minor
  R1*101
}

% Euphonium and tuba
euphonium = \relative c {
  \clef bass
  \key e \minor
  R1*9
}
tuba = \relative c {
  \clef bass
  \key e \minor
  R1*61
}

% Percussion
timpani = \relative c {
  \clef bass
  \repeat percent 40 {e1:32}
}
percsOne = \relative c' {
  \clef treble
  R1*45 
}
percsTwo = \relative c' {
  \clef percussion
  R1*45
}




\score {
  <<
    \new StaffGroup <<
      \new Staff = "Staff_piccolo" \with { instrumentName = "Picc." }
      \piccolo
      \new StaffGroup \with {
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_fluteOne" \with { instrumentName = "Fl. 1" }
        \fluteOne
        \new Staff = "Staff_fluteTwo" \with { instrumentName = "Fl. 2" }
        \fluteTwo
      >>
      \new StaffGroup \with {
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_oboeOne" \with { instrumentName = "Ob. 1" }
        \oboeOne
        \new Staff = "Staff_oboeTwo" \with { instrumentName = "Ob. 2" }    
        \oboeTwo
      >>
      \new Staff = "Staff_bassoon" \with { instrumentName = "Bsn." }
      \bassoon
    >>
    \new StaffGroup <<
      \new Staff = "Staff_clarinetEb" \with { instrumentName = \markup { \concat { "Cl. E" \flat } } }
      \clarinetEb
      \new StaffGroup \with {
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_clarinetOne" \with { instrumentName = \markup { \concat { "Cl. 1" } } }
        \clarinetOne
        \new Staff = "Staff_clarinetTwo" \with { instrumentName = \markup { \concat { "Cl. 2" } } }
        \clarinetTwo
        \new Staff = "Staff_clarinetThree" \with { instrumentName = \markup { \concat { "Cl. 3" } } }
        \clarinetThree
      >>
      \new Staff = "Staff_bassClarinet" \with { instrumentName = "B. Cl." }
      \bassClarinet
    >>
    \new StaffGroup <<
      \new StaffGroup \with {
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_saxOne" \with { instrumentName = "Sax. 1" }
        \saxOne
        \new Staff = "Staff_saxTwo" \with { instrumentName = "Sax. 2" }
        \saxTwo
      >>
      \new Staff = "Staff_tenor" \with { instrumentName = "T. Sax." }
      \tenor
      \new Staff = "Staff_baritone" \with { instrumentName = "Bar." }
      \baritone
    >>
    \new PianoStaff \with { instrumentName = "Piano" }
    <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
    \new StaffGroup <<
      \new StaffGroup \with {
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_trumpetOne" \with { instrumentName = "Tpt. 1" }
        \trumpetOne
        \new Staff = "Staff_trumpetTwo" \with { instrumentName = "Tpt. 2" }
        \trumpetTwo
        \new Staff = "Staff_trumpetThree" \with { instrumentName = "Tpt. 3" }
        \trumpetThree
      >>
      \new StaffGroup \with {
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_hornOne" \with { instrumentName = "Hn. 1" }
        \hornOne
        \new Staff = "Staff_hornTwo" \with { instrumentName = "Hn. 2" }
        \hornTwo
      >>
      \new StaffGroup \with {
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_tromboneOne" \with { instrumentName = "Trb. 1" }
        \tromboneOne
        \new Staff = "Staff_tromboneTwo" \with { instrumentName = "Trb. 2" }  
        \tromboneTwo
      >>
      \new Staff = "Staff_euphonium" \with { instrumentName = "Euph." }
      \euphonium
      \new Staff = "Staff_tuba" \with { instrumentName = "Tuba" }
      \tuba
    >>
    \new StaffGroup <<
      \new Staff = "Staff_timpani" \with { instrumentName = "Timp." } 
      \timpani
      \new Staff = "Staff_percsOne" \with { instrumentName = "Perc. 1" }
      \percsOne
      \new Staff = "Staff_percsTwo" \with { instrumentName = "Perc. 2" }
      \percsTwo
    >>
  >>
  \layout { }
  \midi { }
}