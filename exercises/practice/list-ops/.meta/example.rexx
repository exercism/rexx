Append : ; return SPACE(ARG(1) ARG(2))
ListLength : ; return WORDS(ARG(1))
Head : ; return WORD(ARG(1), 1)
Tail : ; return DELWORD(ARG(1), 1, 1)

Filter : procedure
  parse arg input, function
  output = '' ; do while input \= ''
    parse var input token input
    cmd = 'isTrue =' function || "(token)" ; interpret cmd
    if isTrue then ; output ||= token ''
  end
return SPACE(output)

Map : procedure
  parse arg input, function
  output = '' ; do while input \= ''
    parse var input token input
    cmd = 'retval =' function || "(token)" ; interpret cmd
    output ||= retval ''
  end
return SPACE(output)

FoldL : procedure
  parse arg input, function, redux
  if input == '' then ; return SPACE(redux)
  parse var input head tail
  cmd = 'redux =' function || "(head, redux)" ; interpret cmd
return FoldL(tail, function, redux)

FoldR : procedure
  parse arg input, function, redux
return FoldL(ListReverse(input), function, redux)

ListReverse : procedure
  parse arg input
  output = '' ; do while input \= ''
    parse var input elem input
    output = elem output
  end
return SPACE(output)
