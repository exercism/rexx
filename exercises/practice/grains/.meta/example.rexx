ComputeSquare : procedure
  parse arg n
  if n == 1 then ; return 1
  else ; return ComputeSquare(n - 1) * 2

Square : procedure
  parse arg n
  if n < 1 | n > 64 then ; return -1
  else ; return ComputeSquare(n)

Total : procedure
return Square(64) * 2 - 1
