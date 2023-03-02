Factors : procedure
  if ARG() \= 1 | \DATATYPE(ARG(1), 'N') | ARG(1) < 2 then ; return ''
return STRIP(ComputeFactors(ARG(1)))

IsPrime : procedure
  n = ARG(1)
  if n == 1 then ; return 0
  if n == 2 then ; return 1
  limit = (SquareRoot(n) % 1) + 1
  do i = 2 to limit
    if n // i == 0 then ; return 0
  end
return 1

ComputeFactors : procedure
  n = ARG(1)
  if n == 1 then ; return ''
  if IsPrime(n) then ; return '' || n
  limit = (SquareRoot(n) % 1) + 1
  do i = 2 to limit
    if n // i == 0 then ; return i ComputeFactors(n / i)
  end
return ''

SquareRoot : procedure
  parse value ABS(ARG(1)) 1 0 with x r r1
  if x == 0 then ; return 0
  do while r \= r1 ; parse value r (x / r + r) / 2 with r1 r ; end
return r
