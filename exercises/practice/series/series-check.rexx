/* Unit Test Runner: t-rexx */
context('Checking the Slices function')

/* Unit tests */
check('slices of one from one' 'Slices(1, "1")',,
      'Slices(1, "1")',, '=', '1')

check('slices of one from two' 'Slices(1, "12")',,
      'Slices(1, "12")',, '=', '1 2')

check('slices of two' 'Slices(2, "35")',,
      'Slices(2, "35")',, '=', '35')

check('slices of two overlap' 'Slices(2, "9142")',,
      'Slices(2, "9142")',, '=', '91 14 42')

check('slices can include duplicates' 'Slices(3, "777777")',,
      'Slices(3, "777777")',, '=', '777 777 777 777')

check('slices of a long series' 'Slices(5, "918493904243")',,
      'Slices(5, "918493904243")',, '=', '91849 18493 84939 49390 93904 39042 90424 04243')

check('slice length is too large' 'Slices(6, "12345")',,
      'Slices(6, "12345")',, '=', '')

check('slice length is way too large' 'Slices(30, "12345")',,
      'Slices(30, "12345")',, '=', '')

check('slice length cannot be zero' 'Slices(0, "12345")',,
      'Slices(0, "12345")',, '=', '')

check('slice length cannot be negative' 'Slices(-1, "12345")',,
      'Slices(-1, "12345")',, '=', '')

check('empty series is invalid' 'Slices(1, "")',,
      'Slices(1, "")',, '=', '')

