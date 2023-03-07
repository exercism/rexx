Accumulate : procedure
  parse arg input, function
  output = '' ; do while input \= ''
    parse var input token input
    cmd = 'retval =' function || '(' || ''''token'''' || ')' ; interpret cmd
    output ||= retval ''
  end
  say output
return STRIP(output, 'T')

/* Need to implement test helpers here, not in test runner file */
Dummy : ; return ''
Square : ; return ARG(1) * ARG(1)
ToUpperCase : ; return UPPER(ARG(1))
ReverseToken : ; return REVERSE(ARG(1))
GenSeq : if ARG(1) > 0 then ; return STRIP(GenSeq(ARG(1) - 1) ARG(1)) ; return ''
