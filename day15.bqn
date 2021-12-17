of‿merge‿pop←{
  L‿V‿P‿·‿R←{𝕩⊑⊢}¨↕5,We←{𝕊@:0;3⊑𝕩}
  Merge⇐{
    @𝕊𝕩:𝕩;𝕨𝕊@:𝕨;
    𝕨>○V𝕩?𝕩𝕊𝕨;
    w𝕊x:
      m←w R⊸𝕊 x
      (L w) {
        𝕨≥𝕩?(L w)‿(V w)‿(P w)‿(𝕩+1)‿m;
        m‿(V w)‿(P w)‿(𝕨+1)‿(L w)}○We m
  }
  Of⇐{@‿𝕨‿𝕩‿1‿@}
  Pop⇐L⊸Merge⟜R⋈P
}
p←>'0'-˜•Flines"day15.dat2"
w←{w←{𝕩=0?∞;𝕩}¨{»˘»(2+≢)⊸↑p},{(𝕩+1‿1)⊑w}}
grid←⋈⌜˜↕≠p
dist←{0‿0≡𝕩?0;∞}¨grid
queue←@Merge´{(𝕩⊑dist)Of𝕩}¨⥊grid
cur←@
Step←{ 𝕊:
  queue‿cur↩Pop queue
  neighbours←{¬∞=W >𝕩}˘⊸/{cur+𝕩}¨<˘4‿2⥊∾⟜⌽∾⟜-(0‿1)
  next_dist←{(cur⊑dist)+ W 𝕩}¨neighbours
  prev_dist←({𝕩⊑dist}¨neighbours)
  {𝕊p‿d:
    queue↩(d Of p) Merge queue
    dist↩d⌾(p⊸⊑)dist
  }˘⍉((next_dist<prev_dist)/⎉1(neighbours≍next_dist)),@
}
Step•_while_{𝕊:∞=dist⊑˜⋈˜¯1} @
•Show dist⊑˜⋈˜¯1
