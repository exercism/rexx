Accumulate : procedure
  parse arg input, function
  output = '' ; do while input \= ''
    parse var input token input
    cmd = 'retval =' function || '(' || ''''token'''' || ')' ; interpret cmd
    output ||= retval ''
  end
return STRIP(output, 'T')
