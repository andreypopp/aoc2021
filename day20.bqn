Sp←{(+`𝕨)⊔○(𝕨¬⊸/⊢)𝕩}
data←{𝕩≡""}¨ ⊸Sp {'#'=𝕩}¨¨•file.Lines "day20.dat2"
algo‿img←(⊑⊑data)‿(⊏>>1↓data)
Pad←{f𝕊x: (⍉f«˘f»˘⍟2⊢)⍟2 (2+≢)⊸↑ x}
Enhance←{𝕊p‿f:
  p↩({(+´ (2⋆⌽↕9)× ⥊𝕩) ⊑algo}˘˘ (3‿3)↕ f Pad⍟2 p)
  f↩(511×f)⊑algo
  p‿f
}
+´ {𝕩=1} ⥊ 0⊑(Enhance⍟ 2 img‿0)
+´ {𝕩=1} ⥊ 0⊑(Enhance⍟50 img‿0)
