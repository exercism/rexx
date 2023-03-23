IsValid : procedure
  parse value SPACE(ARG(1)) with input
  if LENGTH(input) < 10 then ; return 0
  if VERIFY(input, 'X-0123456789', 'N') > 0 then ; return 0
  isbn = CHANGESTR('-', input, '') ; isbnlen = LENGTH(isbn)
  if isbnlen \= 10 then ; return 0
  hasXChar = COUNTSTR('X', isbn) > 0
  if hasXChar & POS('X', isbn) < isbnlen ; then ; return 0
  checksum = SUBSTR(isbn, isbnlen, 1) ; if hasXChar then ; checksum = 10
  isbn = DELSTR(isbn, isbnlen, 1)
  do i = 1 to 9 ; checksum += SUBSTR(isbn, i, 1) * (11 - i) ; end
return checksum // 11 == 0
