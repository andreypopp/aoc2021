x ← ⟨
  "forward"‿5
  "down"‿5
  "forward"‿8
  "up"‿3
  "down"‿8
  "forward"‿2
⟩ # list of op × value pairs
v ← 1⊑¨x # vector of values
Op ← 0⊑¨0⊑¨x⊸= # extract op mask
Op 'f' # e.g. this is where "forward" is applied
OpV ← {+´ (Op 𝕩) × v} # this applies the mask to values and sums
hor ← OpV 'f' # part 1/2 horizontal position
depth1 ← 'd' -○OpV 'u' # part 1 depth (downs - ups)
aim ← +` 'd' -○{(Op 𝕩) × v} 'u' # compute aim per step
depth2 ← +´ (Op 'f') × v × aim # part 2 depth
