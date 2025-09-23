Minimize
  value: v

Subject To
  c2: -2 x1 - 2 x2 + 5 x3 + 7 x4 + 9 x5 - v <= 0
  c4:  1 x1 - 4 x2 - 4 x3 + 7 x4 + 9 x5 - v <= 0
  c6:  1 x1 + 3 x2 - 6 x3 - 6 x4 + 9 x5 - v <= 0
  c8:  1 x1 + 3 x2 + 5 x3 - 8 x4 - 8 x5 - v <= 0
  prob: x1 + x2 + x3 + x4 + x5 = 1

Bounds
  x1 >= 0
  x2 >= 0
  x3 >= 0
  x4 >= 0
  x5 >= 0
  v free

End
