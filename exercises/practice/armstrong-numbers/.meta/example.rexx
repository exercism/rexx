IsArmstrongNumber : procedure
  if ARG() \= 1 | \DATATYPE(ARG(1), 'N') | ARG(1) < 0 then ; return -1
  parse value ARG(1) LENGTH(ARG(1)) 0 0 0 ,
        with candidate length sum divisor digit
  if candidate == 0 then ; return 1
  divisor = Power(10, length) ; do while divisor > 1
    digit = candidate // divisor % (divisor % 10)
    sum = sum + Power(digit, length)
    divisor = divisor % 10
  end
return sum == candidate

Power : procedure
  parse arg x, y
  if y == 0 then ; return 1
  t = Power(x, y % 2)
  if y // 2 == 0 then ; return t * t
return x * t * t
