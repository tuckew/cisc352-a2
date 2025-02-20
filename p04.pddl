(define (problem p4-dungeon)
  (:domain Dungeon)

  ; Come up with your own problem instance (see assignment for details)
  ; NOTE: You _may_ use new objects for this problem only.

  ; Naming convention:
  ; - loc-{i}-{j} refers to the location at the i'th column and j'th row (starting in top left corner)
  ; - c{i}{j}{h}{k} refers to the corridor connecting loc-{i}-{j} and loc-{h}-{k}
  (:objects
    loc-1-1 loc-2-1 loc-3-1 loc-4-1 loc-1-2 loc 3-2 loc-4-2 loc-2-3 loc-3-3 loc-4-3 loc-2-4 loc-3-4 loc-4-4 - location
    c1121 c1121 c2131 c3132 c3141 c3233 c3334 c3323 c2324 c2434 c4142 c4243 c4344 - corridor
    key1 - key
  )

  (:init

    ; Hero location and carrying status
    (hero-at loc-1-1)
    (arm-free)


    ; Location <> Corridor Connections

    (connected loc-1-1 loc-2-1 c1121)
    (connected loc-1-1 loc-2-1 c1121)
    (connected loc-2-1 loc-3-1 c2131)
    (connected loc-3-1 loc-3-2 c3132)
    (connected loc-3-1 loc-4-1 c3141)
    (connected loc-3-2 loc-3-3 c3233)
    (connected loc-3-3 loc-3-4 c3334)
    (connected loc-3-3 loc-2-3 c3323)
    (connected loc-2-3 loc-2-4 c2324)
    (connected loc-2-4 loc-3-4 c2434)
    (connected loc-4-1 loc-4-2 c4142)
    (connected loc-4-2 loc-4-3 c4243)
    (connected loc-4-3 loc-4-4 c4344)

    ; Key locations
    (key-at loc-2-1 key1)
    (key-at loc-2-4 key2)
    (key-at loc-3-4 key3)
    (key-at loc-4-3 key4)

    ; Locked corridors
    (lock-color c1213 red)
    (lock-color c1424 purple)
    (lock-color c2434 green)
    (lock-color c4344 rainbow)

    ; Risky corridors
    (risky c1213)

    ; Key colours
    (key-color key1 red)
    (key-color key2 green)
    (key-color key3 purple)
    (key-color key4 rainbow)

    ; Key usage properties (one use, two use, etc)
    (uses-left key1 1)
    (uses-left key2 1)
    (uses-left key3 1)
    (uses-left key4 1)

  )
  (:goal
    (and
      ; Hero's final location goes here
      (hero-at loc-4-4)
    )
  )

)
