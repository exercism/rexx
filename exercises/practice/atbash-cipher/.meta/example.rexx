Encode : procedure
  if ARG() < 1 | ARG(1) == '' then ; return ''
  parse value Convert(ARG(1)) with input output
  do while input \= ''
    parse var input chunk +5 input
    output ||= chunk ''
  end
return STRIP(output, 'T')

Decode : procedure
  if ARG() < 1 | ARG(1) == '' then ; return ''
return Convert(ARG(1))

Convert : procedure
  sanitized = LOWER(CHANGESTR(';',,
                              TRANSLATE(ARG(1),, ' ~`!@#$%^&*()_-+=<,>.?/:;"',,
                                        ';'),,
                              ''))
  converted = TRANSLATE(sanitized, 'zyxwvutsrqponmlkjihgfedcba',,
                                   'abcdefghijklmnopqrstuvwxyz')
return converted
