Split ← {𝕨((⊢-˜+`×¬)∘=⊔⊢)𝕩}
data ← •file.Lines "day12.dat4"
map ← {𝕩∾⌽¨𝕩}'-'Split¨data
Lookup ← {1⊑¨((𝕨{((𝕨≡⊑)¨𝕩)}𝕩)/𝕩)}
IsLower ← {∧´{⊑(𝕩-'a')∊↕26}¨𝕩}
IsIn ← {∨´(<𝕨)≡¨𝕩}
p1 ← ⟨"start"⟩ {
  𝕩≡"end"?1;
  S    ← 𝕊
  seen ← 𝕨
  next ← {seen¬∘IsIn˜𝕩}¨⊸/(𝕩 Lookup map)
  seen ↩ seen∾(IsLower¨⊸/⟨𝕩⟩)
  (0<≠next)?(+´{seen S 𝕩}¨next);0
} "start"
•Repr p1
