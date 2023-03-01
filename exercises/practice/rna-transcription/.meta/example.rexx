DNA2RNA : procedure
  if ARG() \= 1 | ARG(1) == '' then ; return ''
return TRANSLATE(UPPER(ARG(1)), 'GCAU', 'CGTA')
