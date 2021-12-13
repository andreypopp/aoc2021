x ← > {𝕩-'0'}¨ •file.Lines "day3.dat1"
ToDec ← {+´×⟜{⌽2⋆↕≠𝕩}𝕩}
Mc ← { Z←{+´⎉1 ⍉𝕩=𝕨} ⋄ (1 Z 𝕩) > (0 Z 𝕩) }
Lc ← ¬Mc
Gamma ← ToDec Mc
Eps ← ToDec Lc
p1 ← (Gamma x) × (Eps x)
