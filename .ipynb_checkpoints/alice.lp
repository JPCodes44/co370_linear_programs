* It's a Alice — CPLEX LP format *
* Save as: alice.lp *

Maximize
  utility: v

Subject To
  c1:  3 x1 +  5 x2 -  7 x3 -  9 x4 - 11 x5 - v >= 0
  c2: -5 x1 +  7 x2 +  9 x3 - 11 x4 - 13 x5 - v >= 0
  c3: -7 x1 -  9 x2 + 11 x3 + 13 x4 - 15 x5 - v >= 0
  c4: -9 x1 - 11 x2 - 13 x3 + 15 x4 + 17 x5 - v >= 0
  prob: x1 + x2 + x3 + x4 + x5 = 1

Bounds
  x1 >= 0
  x2 >= 0
  x3 >= 0
  x4 >= 0
  x5 >= 0

End
