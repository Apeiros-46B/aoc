# uiua 0.51

Slurp ← &i "lib.ua" "Slurp"
Print ← &i "lib.ua" "Print"

Names ← {"one" "two" "three" "four" "five" "six" "seven" "eight" "nine"}
Digits ← +@0↘1⇡10

PartI ← (
  ≡(
    ⊃⊢(⊢⇌)▽↧≥@0,≤@9.°□ # pick first and last numeric chars
    +×10∩(-@0)         # convert to number
  )
  /+
)

PartII ← (
  ≡(
    ⊚≡(↥∩⌕⊙,°□) Names Digits ¤°□ # extract number positions and values
    +1 ⊏⊃(⍏⊡1)(⊡0)⍉              # sort by position
    +×10 ⊃⊢(⊢⇌)                  # get calibration value
  )
  /+
)

Print ⊃(PartI)(PartII) Slurp "1.txt"
