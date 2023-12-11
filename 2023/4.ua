# uiua 0.51

Slurp ← &i "lib.ua" "Slurp"
Print ← &i "lib.ua" "Print"

# remove newlines
≡⍜°□(↘¯1) Slurp "4.input"
≡(
  # extract relevant data
  °⊟⍜⍉(⊡1) ⬚@\n regex "Card +\\d+: ([^|]+) | ([^|]+)"

  # parse numbers and count matches
  /+♭⊠=∩(≡⋕ ⊜□≠,@ °□)

  # 2^(n-1) if n != 0, else 0
  (ⁿ:2-1|0)=0.
)
/+ # sum all points
