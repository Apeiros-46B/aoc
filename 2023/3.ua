# uiua 0.51

Slurp ← &i "lib.ua" "Slurp"

IsNum ← ↧⊃(≥@0)(≤@9)
HasSym ← /↥♭ ↧⊃(≠@.)(¬IsNum)
Dot ← ≡(⊂@.⊂:@.)
Pad ← Dot⍜⍉Dot

# flat indices of numeric characters next to symbols
AdjToSymIdxs ← ⊚♭ ⍜(☇2)(≡(↧⊃(HasSym)(IsNum⊡1_1))) ◫3_3 Pad

# flat partitions of indices of numeric characters
GetParts ← ⊜□ ⊃(IsNum♭)(⇡/×△)

Slurp "3.txt"
≡(↘¯1°□)                     # get rid of newline characters
⊃(¤AdjToSymIdxs|GetParts|¤♭) # stuff
▽≡(/↥∊°□),                   # keep only partitions next to symbols
/+≡(⋕⊏°□)                    # select partitions and sum their values
