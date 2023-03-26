/* Unit Test Runner: t-rexx */
function = 'Convert'
context('Checking the' function 'function')

/* Unit tests */
check('No input' function||'("")',,
     function||'("")',, 'to be', '')

input = ,
' _ ' || ,
'| |' || ,
'|_|' || ,
'   '
check('Recognizes 0' function||'(input)',,
     function||'(input)',, 'to be', 0)

input = ,
'   ' || ,
'  |' || ,
'  |' || ,
'   '
check('Recognizes 1' function||'(input)',,
     function||'(input)',, 'to be', 1)

input = ,
'   ' || ,
' _ ' || ,
' | ' || ,
'   '
check('Unreadable but correctly sized inputs return ?' function||'(input)',,
     function||'(input)',, 'to be', '?')

input = ,
' _ ' || ,
'| |' || ,
'   '
check('Input with a number of lines that is not a multiple of four raises an error' function||'(input)',,
     function||'(input)',, 'to be', '')

input = ,
'  ' || ,
' |' || ,
' |' || ,
'  '
check('Input with a number of columns that is not a multiple of three raises an error' function||'(input)',,
     function||'(input)',, 'to be', '')

input = ,
'       _     _        _  _ ' || ,
'  |  || |  || |  |  || || |' || ,
'  |  ||_|  ||_|  |  ||_||_|' || ,
'                           '
check('Recognizes 110101100' function||'(input)',,
     function||'(input)',, 'to be', '110101100')

input = ,
'       _     _           _ ' || ,
'  |  || |  || |     || || |' || ,
'  |  | _|  ||_|  |  ||_||_|' || ,
'                           '
check('Garbled numbers in a string are replaced with ?' function||'(input)',,
     function||'(input)',, 'to be', '11?10?1?0')

input = ,
' _ ' || ,
' _|' || ,
'|_ ' || ,
'   '
check('Recognizes 2' function||'(input)',,
     function||'(input)',, 'to be', 2)

input = ,
' _ ' || ,
' _|' || ,
' _|' || ,
'   '
check('Recognizes 3' function||'(input)',,
     function||'(input)',, 'to be', 3)

input = ,
'   ' || ,
'|_|' || ,
'  |' || ,
'   '
check('Recognizes 4' function||'(input)',,
     function||'(input)',, 'to be', 4)

input = ,
' _ ' || ,
'|_ ' || ,
' _|' || ,
'   '
check('Recognizes 5' function||'(input)',,
     function||'(input)',, 'to be', 5)

input = ,
' _ ' || ,
'|_ ' || ,
'|_|' || ,
'   '
check('Recognizes 6' function||'(input)',,
     function||'(input)',, 'to be', 6)

input = ,
' _ ' || ,
'  |' || ,
'  |' || ,
'   '
check('Recognizes 7' function||'(input)',,
     function||'(input)',, 'to be', 7)

input = ,
' _ ' || ,
'|_|' || ,
'|_|' || ,
'   '
check('Recognizes 8' function||'(input)',,
     function||'(input)',, 'to be', 8)

input = ,
' _ ' || ,
'|_|' || ,
' _|' || ,
'   '
check('Recognizes 9' function||'(input)',,
     function||'(input)',, 'to be', 9)

input = ,
'    _  _     _  _  _  _  _  _ ' || ,
'  | _| _||_||_ |_   ||_||_|| |' || ,
'  ||_  _|  | _||_|  ||_| _||_|' || ,
'                              '
check('Recognizes string of decimal numbers' function||'(input)',,
     function||'(input)',, 'to be', '1234567890')

input = ,
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
check('Numbers (fixed) separated by empty lines are recognized. Lines are joined by commas.' function||'(input)',,
     function||'(input)',, 'to be', '123,456,789')

input = ,
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
check('Numbers (varying) separated by empty lines are recognized. Lines are joined by commas.' function||'(input)',,
     function||'(input)',, 'to be', '1234,56,7')

