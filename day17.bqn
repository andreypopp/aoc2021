To←{𝕨+↕(1+𝕩-𝕨)}
area←{x⇐209 To 238,y⇐¯86 To ¯59}, t←↕1000
x←{s←×𝕩 ⋄ v←|0⌈¨s×𝕩+s×{𝕨-1}`t ⋄ +`{𝕨+v}×t}¨(1 To 1000)
y←{v←𝕩+{𝕨-1}`t ⋄ +`{𝕨+v}×t}¨(¯499 To 500)
p1←⌈´⌈´¨{∨´{𝕩∊area.y}}¨⊸/y
Hits←{p𝕊t:{0<+´𝕩}¨⊸/{𝕩∊t}¨p}
p2←+´{𝕊x‿y:∨´x∧y}¨⥊(x Hits area.x)⋈⌜(y Hits area.y)
