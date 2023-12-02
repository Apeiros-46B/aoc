Slurp ← &i "lib.ua" "Slurp"
Slurp "1.input"
≡(
  ⊔
  ⊚↧⊃(≥@0)(≤@9).       # find indices of numeric chars
  +×10∩(-@0 ⊡)⊙,⊃⊢(⊢⇌) # pick first and last digit and convert to one number
)
/+
