Keep : procedure
  nop
return ''

Discard : procedure
  nop
return ''

/* Need to implement test helpers here, not in test runner file */
LessThan10 : ; return ARG(1) < 10
IsOdd : ; return ARG(1) // 2 > 0
IsEven : ; return ARG(1) // 2 == 0
StartsWithZ : ; return SUBSTR(ARG(1), 1, 1) == 'z'
