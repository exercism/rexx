Clean : procedure
  parse value SPACE(ARG(1)) with input
  if LENGTH(input) < 10 then ; return ''
  if VERIFY(input, ' .-+()0123456789', 'N') > 0 then ; return ''
  nanp = CHANGESTR(';', TRANSLATE(input,, ' .-+()', ';'), '')
  parse value LENGTH(nanp) SUBSTR(nanp, 1, 1) ,
        with  nanplen      areacode
  if nanplen > 10 & areacode \= '1' then ; return ''
  if nanplen < 11 then ; nanp = '1' || nanp
  parse value LENGTH(nanp) SUBSTR(nanp, 2, 1) SUBSTR(nanp, 5, 1) ,
        with  nanplen      areacode           exchcode
  if nanplen \= 11 then ; return ''
  if VERIFY(areacode, '01', 'M') > 0 then ; return ''
  if VERIFY(exchcode, '01', 'M') > 0 then ; return ''
return DELSTR(nanp, 1, 1)
