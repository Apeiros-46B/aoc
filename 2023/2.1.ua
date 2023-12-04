# uiua 0.51

Slurp ← &i "lib.ua" "Slurp"

# given string, finds order of red, green, and blue
# 0 = red, 1 = green, 2 = blue
RGB ← ⍏⍏≡((⊡0|∞)=0⧻.⊚⌕⊔){"red" "green" "blue"}¤

# partitions numerals in string, taking three (fill 0)
Numeric ← ⬚0↙3 ⊜parse↧≥@0,≤@9.

# remove leading and trailing spaces
Trim ← ▽↧⊃(⍜⇌\↥|\↥)≠@ .

Possible ← (
  ⊏⊃(RGB|Numeric)
  /↧≤12_13_14 # maximum of 12 red, 13 green, 14 blue
)

Slurp "2.input"
≡(
  # extract info
  ↘1⊡0 regex "Game (\\d+): (.*)"

  # parse game ID
  ⍜(⊡0)(parse)

  # get if game was possible
  ⍜(⊡1)(/↧≡(Possible Trim⊔) ⊜□≠,@;⊔)
  :∩⊔⍘⊟
)
# sum game IDs
/+▽
