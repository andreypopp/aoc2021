s ← >'0'-˜•file.Lines "day11.dat1"
Conv ← { k ← >⟨1‿1‿1,1‿0‿1,1‿1‿1⟩ ⋄ +´⥊×´¨k≍¨𝕩 }
Pad ← {»˘»(2+≢)⊸↑𝕩}
Step ← {
  𝕩 ↩ 𝕩+1,
  s ← 𝕩×0
  𝕩 ↩ {
    h←(𝕩×¬s)>9
    s↩s∨h
    n←𝕩+Conv⎉¯2(3‿3↕Pad h)
    𝕊⍟(¬∧´⥊n=𝕩) n
  } 𝕩
  s‿(𝕩+(𝕩>9)×(-𝕩))
}
p1 ← {c ← 0 ⋄ {m‿snext←Step 𝕩 ⋄ c ↩ (+´⥊m)+c ⋄ snext}⍟100 s ⋄ c}
p2 ← {c ← 0 ⋄ {m‿snext←Step 𝕩 ⋄ c ↩ (c+1) ⋄ 𝕊⍟(¬∧´⥊m) snext} s ⋄ c}




