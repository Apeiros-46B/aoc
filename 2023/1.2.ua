# uiua 0.51
# TODO

Slurp ← &i "lib.ua" "Slurp"

NumbersTbl ← ¤{
  "one" 1
  "two" 2
  "three" 3
  "four" 4
  "five" 5
  "six" 6
  "seven" 7
  "eight" 8
  "nine" 9}

CalFromLine ← (
  ⸮ [⊃⊢(⊢⇌)] regex "one|two|three|four|five|six|seven|eight|nine|\\d"
  ≡(⍣(parse⊔ ⊙;)(⊔⊡⊗⊙(↻¯1.) ⊙⊙;)):NumbersTbl
  /(+×10)
)

/+≡(CalFromLine ⊔) Slurp "1.input"
