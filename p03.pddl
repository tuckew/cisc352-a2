(define (problem p3-dungeon)
  (:domain Dungeon)

  ; Naming convention:
  ; - loc-{i}-{j} refers to the location at the i'th column and j'th row (starting in top left corner)
  ; - c{i}{j}{h}{k} refers to the corridor connecting loc-{i}-{j} and loc-{h}-{k}
  (:objects
    loc-3-4 loc-4-5 loc-1-2 loc-2-2 loc-3-2 loc-3-3 loc-2-5 loc-1-3 loc-2-1 loc-1-4 loc-3-5 loc-2-4 loc-4-4 loc-2-3 loc-4-3 - location
    c2122 c1222 c2232 c1213 c1223 c2223 c3223 c3233 c1323 c2333 c1314 c2314 c2324 c2334 c3334 c1424 c2434 c2425 c2535 c3545 c4544 c4443 - corridor
    key1 key2 key3 key4 key5 key6 - key
  )

  (:init

    ; Hero location and carrying status
    (hero-at loc-2-1)
    (arm-free)

    ; Location <> Corridor Connections
    (connected loc-2-1 loc-2-2 c2122)
    (connected loc-1-2 loc-2-2 c1222)
    (connected loc-2-2 loc-3-2 c2232)
    (connected loc-1-2 loc-1-3 c1213)
    (connected loc-1-2 loc-2-3 c1223)
    (connected loc-2-2 loc-2-3 c2223)
    (connected loc-3-2 loc-2-3 c3223)
    (connected loc-3-2 loc-3-3 c3233)
    (connected loc-1-3 loc-2-3 c1323)
    (connected loc-2-3 loc-3-3 c2333)
    (connected loc-1-3 loc-1-4 c1314)
    (connected loc-2-3 loc-1-4 c2314)
    (connected loc-2-3 loc-2-4 c2324)
    (connected loc-2-3 loc-3-4 c2334)
    (connected loc-3-3 loc-3-4 c3334)
    (connected loc-1-4 loc-2-4 c1424)
    (connected loc-2-4 loc-3-4 c2434)
    (connected loc-2-4 loc-2-5 c2425)
    (connected loc-2-5 loc-3-5 c2535)
    (connected loc-3-5 loc-4-5 c3545)
    (connected loc-4-5 loc-4-4 c4544)
    (connected loc-4-4 loc-4-3 c4443)

    ; Key locations
    (key-at key1 loc-2-1)

    (key-at key2 loc-2-3)
    (key-at key3 loc-2-3)
    (key-at key4 loc-2-3)
    (key-at key5 loc-2-3)
    (key-at key6 loc-4-4)

    ; Locked corridors
    (lock-color c1223 red)
    (lock-color c2223 red)
    (lock-color c3223 red)
    (lock-color c1323 red)
    (lock-color c2314 red)
    (lock-color c2324 red)

    (lock-color c2425 purple)
    (lock-color c3545 purple)

    (lock-color c2636 green)
    (lock-color c4544 green)

    (lock-color c4443 rainbow)

    ; Risky corridors
    (risky c1223)
    (risky c2223)
    (risky c3223)
    (risky c1323)
    (risky c2314)
    (risky c2324)

    ; Key colours
    (key-color key1 red)
    (key-color key2 green)
    (key-color key3 green)
    (key-color key4 purple)
    (key-color key5 purple)

    ; Key usage properties (one use, two use, etc)
    (uses-left key1 1)
    (uses-left key2 1)
    (uses-left key3 1)
    (uses-left key4 1)
    (uses-left key5 1)

  )
  (:goal
    (and
      ; Hero's final location goes here
      (hero-at loc-4-3)
    )
  )

)
