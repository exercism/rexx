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
