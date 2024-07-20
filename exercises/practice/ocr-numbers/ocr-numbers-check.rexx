/* Unit Test Runner: t-rexx */
context('Checking the Convert function')

/* Test Variables */
input_0 = ,
' _ ' || ,
'| |' || ,
'|_|' || ,
'   '

input_1 = ,
'   ' || ,
'  |' || ,
'  |' || ,
'   '

input_bad1 = ,
'   ' || ,
' _ ' || ,
' | ' || ,
'   '

input_bad2 = ,
' _ ' || ,
'| |' || ,
'   '

input_bad3 = ,
'  ' || ,
' |' || ,
' |' || ,
'  '

input_binary = ,
'       _     _        _  _ ' || ,
'  |  || |  || |  |  || || |' || ,
'  |  ||_|  ||_|  |  ||_||_|' || ,
'                           '

input_binary_garbled = ,
'       _     _           _ ' || ,
'  |  || |  || |     || || |' || ,
'  |  | _|  ||_|  |  ||_||_|' || ,
'                           '

input_2 = ,
' _ ' || ,
' _|' || ,
'|_ ' || ,
'   '

input_3 = ,
' _ ' || ,
' _|' || ,
' _|' || ,
'   '

input_4 = ,
'   ' || ,
'|_|' || ,
'  |' || ,
'   '

input_5 = ,
' _ ' || ,
'|_ ' || ,
' _|' || ,
'   '

input_6 = ,
' _ ' || ,
'|_ ' || ,
'|_|' || ,
'   '

input_7 = ,
' _ ' || ,
'  |' || ,
'  |' || ,
'   '

input_8 = ,
' _ ' || ,
'|_|' || ,
'|_|' || ,
'   '

input_9 = ,
' _ ' || ,
'|_|' || ,
' _|' || ,
'   '

input_series_decimal = ,
'    _  _     _  _  _  _  _  _ ' || ,
'  | _| _||_||_ |_   ||_||_|| |' || ,
'  ||_  _|  | _||_|  ||_| _||_|' || ,
'                              '

input_series_fixed = ,
'    _  _ ' || ,
'  | _| _|' || ,
'  ||_  _|' || ,
'         ' || ,
"0A"X || ,
'    _  _ ' || ,
'|_||_ |_ ' || ,
'  | _||_|' || ,
'         ' || ,
"0A"X || ,
' _  _  _ ' || ,
'  ||_||_|' || ,
'  ||_| _|' || ,
'         ' || ,
"0A"X

input_series_varying = ,
'    _  _    ' || ,
'  | _| _||_|' || ,
'  ||_  _|  |' || ,
'            ' || ,
"0A"X || ,
' _  _ ' || ,
'|_ |_ ' || ,
' _||_|' || ,
'      ' || ,
"0A"X || ,
' _ ' || ,
'  |' || ,
'  |' || ,
'   ' || ,
"0A"X

/* Unit tests */
check('No input' 'Convert("")',,
      'Convert("")',, '=', '')

check('Recognizes 0' 'Convert('input_0')',,
      'Convert(input_0)',, '=', 0)

check('Recognizes 1' 'Convert('input_1')',,
      'Convert(input_1)',, '=', 1)

check('Unreadable but correctly sized inputs return ?' 'Convert('input_bad1')',,
      'Convert(input_bad1)',, '=', '?')

check('Input with a number of lines that is not a multiple of four raises an error' 'Convert('input_bad2')',,
      'Convert(input_bad2)',, '=', '')

check('Input with a number of columns that is not a multiple of three raises an error' 'Convert('input_bad3')',,
      'Convert(input_bad3)',, '=', '')

check('Recognizes 110101100' 'Convert('input_binary')',,
      'Convert(input_binary)',, '=', '110101100')

check('Garbled numbers in a string are replaced with ?' 'Convert('input_binary_garbled')',,
      'Convert(input_binary_garbled)',, '=', '11?10?1?0')

check('Recognizes 2' 'Convert('input_2')',,
      'Convert(input_2)',, '=', 2)

check('Recognizes 3' 'Convert('input_3')',,
      'Convert(input_3)',, '=', 3)

check('Recognizes 4' 'Convert('input_4')',,
      'Convert(input_4)',, '=', 4)

check('Recognizes 5' 'Convert('input_5')',,
      'Convert(input_5)',, '=', 5)

check('Recognizes 6' 'Convert('input_6')',,
      'Convert(input_6)',, '=', 6)

check('Recognizes 7' 'Convert('input_7')',,
      'Convert(input_7)',, '=', 7)

check('Recognizes 8' 'Convert('input_8')',,
      'Convert(input_8)',, '=', 8)

check('Recognizes 9' 'Convert('input_9')',,
      'Convert(input_9)',, '=', 9)

check('Recognizes string of decimal numbers' 'Convert('input_series_decimal')',,
      'Convert(input_series_decimal)',, '=', '1234567890')

check('Numbers (fixed) separated by empty lines are recognized. Lines are joined by commas.' 'Convert('input_series_fixed')',,
      'Convert(input_series_fixed)',, '=', '123,456,789')

check('Numbers (varying) separated by empty lines are recognized. Lines are joined by commas.' 'Convert('input_series_varying')',,
     'Convert(input_series_varying)',, '=', '1234,56,7')

