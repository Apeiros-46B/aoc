# uiua 0.51

Slurp ← &i "lib.ua" "Slurp"
Print ← &i "lib.ua" "Print"

# given string, finds order of red, green, and blue
# 0 = red, 1 = green, 2 = blue
RGB ← ⍏⍏≡((⊡0|∞)=0⧻.⊚⌕°□){"red" "green" "blue"}¤

# partitions numerals in string, taking three (fill 0)
Numeric ← ⬚0↙3 ⊜⋕↧≥@0,≤@9.

# remove leading and trailing spaces
Trim ← ▽↧⊃(⍜⇌\↥|\↥)≠@ .

# check if a game is possible or not
Possible ← (
  ⊏⊃(RGB|Numeric)
  /↧≤12_13_14 # maximum of 12 red, 13 green, 14 blue
)

PartI ← (
  ≡(
    ↘1⊡0 regex "Game (\\d+): (.*)"       # extract info
    ⍜(⊡0)(⋕)                             # parse game ID
    ⍜(⊡1)(/↧≡(Possible Trim°□) ⊜□≠,@;°□) # get if game was possible
    :∩°□°⊟
  )
  # sum game IDs
  /+▽
)

PartII ← (
  ≡(
    ⊡0_1 regex "Game \\d+: (.*)"         # extract info
    /↥≡(⊏⊃(RGB|Numeric) Trim°□) ⊜□≠,@;°□ # get minimum set
    /×                                   # power
  )
  # sum powers
  /+
)

Print ⊃(PartI)(PartII) Slurp "2.txt"
