p ← 16‿1‿2‿0‿4‿2‿7‿1‿2‿14
D ← {|(𝕩-p)}
G ← {𝕩÷2}∘{1+𝕩}⊸×
_S ← {⌊´(+´𝔽)¨↕0⌈´p+1} # find solution for any distance
⟨D _S ⋄ G∘D _S⟩



