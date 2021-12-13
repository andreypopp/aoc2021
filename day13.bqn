ParseDec ← {+´('0'-˜𝕩)×(⌽10⋆↕≠𝕩)}
Split ← {𝕨((⊢-˜+`×¬)∘=⊔⊢)𝕩}
CutAt ← { at ← 𝕩 ⋄ ⟨⟩ {at≡⊑𝕩?𝕨‿(1↓𝕩);((𝕨∾⊏𝕩)𝕊(1↓𝕩))} 𝕨 }
data ← •file.Lines "day13.dat2"
map‿folds ← data CutAt ""
map ↩ >ParseDec¨¨','Split¨map
folds ↩ {dim‿v ← '='Split𝕩 ⋄ (⊑dim-'x')‿(ParseDec v)}¨(11↓¨folds)

RenderMap ← { 𝕊 map:
  x‿y ← {↕1+⌈´𝕩⊏˘map}¨0‿1
  {∾{p←𝕩, ∨´{p≡𝕩}⎉1 map?"•";" "}¨𝕩}⎉1 ⍉x⋈⌜y
}
Fold ← { map 𝕊 dir‿k:
  keep‿over ← ({dir⊑𝕩>k}˘map)⊔map
  keep∾{((2×k)-dir⊑𝕩)⌾(dir⊸⊑)𝕩}˘over
}

p1 ← +´∊map Fold (⊑folds)
p2 ← RenderMap (map Fold˜´ ⌽folds)
