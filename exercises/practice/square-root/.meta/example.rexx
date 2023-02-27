SquareRoot : procedure
  parse value ABS(ARG(1)) 1 0 with x r r1
  if x == 0 then ; return 0
  do while r \= r1 ; parse value r (x / r + r) / 2 with r1 r ; end
return r
