ParseDec ← { 𝕩↩𝕩-'0' ⋄ +´×⟜{⌽10⋆↕≠𝕩}𝕩 }
x ← ParseDec¨ •file.Lines "day1.dat1"
F ← { +´ <˝˘ 2 ↕ 𝕩 } 
⟨ F x ⋄ F +˝˘ 3 ↕ x ⟩
