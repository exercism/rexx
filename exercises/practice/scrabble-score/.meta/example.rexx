Score : procedure
  POINTS.A = 1 ; POINTS.B = 3 ; POINTS.C = 3 ; POINTS.D = 2 ; POINTS.E = 1
  POINTS.F = 4 ; POINTS.G = 2 ; POINTS.H = 4 ; POINTS.I = 1 ; POINTS.J = 8
  POINTS.K = 5 ; POINTS.L = 1 ; POINTS.M = 3 ; POINTS.N = 1 ; POINTS.O = 1
  POINTS.P = 3 ; POINTS.Q = 10 ; POINTS.R = 1 ; POINTS.S = 1 ; POINTS.T = 1
  POINTS.U = 1 ; POINTS.V = 4 ; POINTS.W = 4 ; POINTS.X = 8 ; POINTS.Y = 4
  POINTS.Z = 10
  parse upper arg input
  score = 0
  do while input \= ''
    parse var input letter +1 input
    score = score + POINTS.letter
  end
return score
