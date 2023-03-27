Rebase : procedure
  parse value ARG(1) || ';' || ARG(2) || ';' || ARG(3) ,
        with  inBase    ';'    digits    ';'    outBase
  if inBase < 2 | outBase < 2 | LENGTH(digits) < 1 then ; return ''
  if Sum(digits) < 1 then ; return ''
  if \HasValidBaseDigits(digits, inBase) then ; return ''
return Base10ToDigits(DigitsToBase10(digits, inbase), outBase)

HasValidBaseDigits : procedure
  parse value SPACE(ARG(1)) || ';' || ARG(2) ,
        with digits ';' base
  do while digits \= ''
    parse var digits digit digits
      if digit < 0 | digit >= base then ; return 0
  end
return 1

Base10ToDigits : procedure
  parse arg base10Value, base
  digits = '' ; do while base10Value > 0
    parse value (base10Value % base) (base10Value // base) ,
          with  base10Value          digit
    digits = digit digits
  end
return STRIP(digits)

DigitsToBase10 : procedure
  parse value SPACE(ReverseWords(ARG(1))) || ';' || ARG(2) 0,
        with digits ';' base asBase10
  ndigits = WORDS(digits)
  do i = 1 to ndigits
    asBase10 += Power(base, (i-1)) * WORD(digits, i)
  end
return asBase10

ReverseWords : procedure
  words = ARG(1) ; n = WORDS(words) ; revwords = ''
  do i = n to 1 by -1
    revwords = revwords WORD(words, i)
  end
return STRIP(revwords)

Sum : procedure
  parse value SPACE(ARG(1)) || ';' || 0 with input ';' sum
  do while input \= '' ; parse var input elem input ; sum += elem ; end
return sum

Power : procedure
  parse arg x, y
  if y == 0 then ; return 1
  t = Power(x, y % 2)
  if y // 2 == 0 then ; return t * t
return x * t * t
