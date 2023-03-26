Convert : procedure
  parse arg input
  parse value (COUNTSTR("0A"X, input) > 0) '' with hasGroups output
  do while input \= ''
    parse var input group "0A"X input
    output ||= ConvertGroup(group) ; if hasGroups then ; output ||= ','
  end
return STRIP(output, 'T', ',')

ConvertGroup : procedure
  parse value ARG(1) || ';' || LENGTH(ARG(1)) with input ';' inputlen
  parse value (inputlen // 12 == 0) (inputlen % 12) ,
        with  isValid               ndigits
  if \isValid | ndigits < 1 then ; return ''
  parse value (inputlen % 4) '' with rowlen output
  do nth = 1 to ndigits
    digit = ExtractNthDigit(input, nth, inputlen, rowlen)
    output ||= GetNumberGivenDigit(digit)
  end
return output

ExtractNthDigit : procedure
  parse arg table, nth, tablelen, rowlen
  parse value (nth * 3 - 2) '' with offset output
  do i = 0 to 2
    output ||= SUBSTR(table, offset + rowlen * i, 3)
  end
  output ||= COPIES(' ', 3)
return output

GetDigitTable : ; return ,
  ' _ | ||_|   :0;     |  |   :1; _  _||_    :2; _  _| _|   :3;' || ,
  '   |_|  |   :4; _ |_  _|   :5; _ |_ |_|   :6; _   |  |   :7;' || ,
  ' _ |_||_|   :8; _ |_| _|   :9'

GetDigitGivenNumber : procedure
  parse arg number
  if number < 0 | number > 9 then ; return ''
  digits = GetDigitTable() ; pos = POS(number, digits)
  if pos < 1 then ; return '?'
return SUBSTR(digits, pos - 13, 12)

GetNumberGivenDigit : procedure
  parse arg digit
  digits = GetDigitTable() ; pos = POS(digit, digits)
  if pos < 1 then ; return '?'
return SUBSTR(digits, pos + 13, 1)
