ReverseString : procedure
  parse arg s
  if s == '' then ; return ''
  else ; return ReverseString(RIGHT(s, LENGTH(s) - 1)) || LEFT(s, 1)
