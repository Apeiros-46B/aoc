# uiua 0.51

Slurp ← &i "lib.ua" "Slurp"

# given string, finds order of red, green, and blue
# 0 = red, 1 = green, 2 = blue
RGB ← ⍏⍏≡((⊡0|∞)=0⧻.⊚⌕⊔){"red" "green" "blue"}¤

# partitions numerals in string, taking three (fill 0)
Numeric ← ⬚0↙3 ⊜parse↧≥@0,≤@9.

# remove leading and trailing spaces
Trim ← ▽↧⊃(⍜⇌\↥|\↥)≠@ .

Slurp "2.input"
≡(
  # extract info
  ⊡0_1 regex "Game \\d+: (.*)"

  # get minimum set
  /↥≡(⊏⊃(RGB|Numeric) Trim⊔) ⊜□≠,@;⊔

  # power
  /×
)
# sum powers
/+
