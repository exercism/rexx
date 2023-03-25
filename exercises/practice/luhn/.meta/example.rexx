IsValid : procedure
  parse value CHANGESTR(' ', ARG(1), '') with input
  if VERIFY(input, '0123456789', 'N') > 0 then ; return 0
  if SUBSTR(input, 1, 1) == '0' then ; input = DELSTR(input, 1, 1)
  if input == '' then ; return 0
  parse value LENGTH(input) (LENGTH(input) // 2 \= 0) 0 ,
        with  inputlen      parity                    sum
  do i = 1 to inputlen
    digit = SUBSTR(input, i, 1)
    if (i-1) // 2 == parity then do
      digit *= 2 ; if digit > 9 then ; digit = digit - 9
    end
    sum += digit
  end
return sum // 10 == 0
