ClassifyNumber : procedure
  if ARG() \= 1 | \DATATYPE(ARG(1), 'N') | ARG(1) < 1 then ; return ''
  parse value ARG(1) AliquotSum(ARG(1)) with number aliquotSum
  if aliquotSum < number then ; return 'DEFICIENT'
  if aliquotSum == number then ; return 'PERFECT'
return 'ABUNDANT'

AliquotSum : procedure
  parse value ARG(1) TRUNC(SquareRoot(ARG(1)) + 1) 2 0 ,
        with number limit divisor sum
  if number == 1 then ; return 0
  do while divisor < limit
    if number // divisor == 0 then do
      if divisor == number % divisor then ; sum += divisor
      else ; sum += (divisor + number % divisor)
    end
    divisor += 1
  end
return sum + 1

SquareRoot : procedure
  parse value ABS(ARG(1)) 1 0 with x r r1
  if x == 0 then ; return 0
  do while r \= r1 ; parse value r (x / r + r) / 2 with r1 r ; end
return r
