Keep : procedure
  parse arg input, function
  output = '' ; do while input \= ''
    parse var input token input
    cmd = 'isTrue =' function || '(' || ''''token'''' || ')' ; interpret cmd
    if isTrue then ; output ||= token ''
  end
return STRIP(output, 'T')

Discard : procedure
  parse arg input, function
  output = '' ; do while input \= ''
    parse var input token input
    cmd = 'isTrue =' function || '(' || ''''token'''' || ')' ; interpret cmd
    if \isTrue then ; output ||= token ''
  end
return STRIP(output, 'T')

/* Need to implement test helpers here, not in test runner file */
LessThan10 : ; return ARG(1) < 10
IsOdd : ; return ARG(1) // 2 > 0
IsEven : ; return ARG(1) // 2 == 0
StartsWithZ : ; return SUBSTR(ARG(1), 1, 1) == 'z'
