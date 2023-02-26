SQRT : procedure
  parse value ABS(ARG(1)) 1 0 with x r r1
  if x == 0 then ; return 0
  do while r \= r1 ; parse value r (x / r + r) / 2 with r1 r ; end
return r

Score : procedure
  if ARG() \= 2 | \DATATYPE(ARG(1), 'N') | \DATATYPE(ARG(2), 'N')
    then ; return -1
  parse arg x, y ; radius = SQRT(x * x + y * y)
  if radius <= 1 then ; return 10
  if radius <= 5 then ; return 5
  if radius <= 10 then ; return 1
return 0
