ParseDec ← {+´('0'-˜𝕩)×(⌽10⋆↕≠𝕩)}
SplitAt ← { x F c: "" {(¬(((≠c)↑𝕩)≡c))?(𝕨∾⊑𝕩)𝕊(1↓𝕩);𝕨‿((≠c)↓𝕩)} x }
data ← •file.Lines "day05.dat2"
lines ← ∧˘>{>{ParseDec¨𝕩SplitAt","}¨𝕩SplitAt" -> "}¨data
X0‿Y0‿X1‿Y1 ← ⥊{𝕩⊑⊢}¨↕2‿2
D←(Y1-Y0)÷(X1-X0)
OnlyVH ← ((X0=X1)∨(Y0=Y1))˘⊸/
Plot ← D⊸{
  ∞ 𝕊 𝕩:y←{a‿b:a↓↕b+1}1⊏˘𝕩,x←(X0 𝕩)¨y,⍉>x‿y;
  d 𝕊 𝕩:x←{a‿b:a↓↕b+1}0⊏˘𝕩,y←(Y0 𝕩)+¨d×↕(≠x),⍉>x‿y
}
PlotAndCountDups ← {≠(1=⊒)⊸/∾{<Plot}˘𝕩}
PlotAndCountDups OnlyVH lines
PlotAndCountDups lines
