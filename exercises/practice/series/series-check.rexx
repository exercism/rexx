/* Unit Test Runner: t-rexx */
function = 'Slices'
context('Checking the' function 'function')

/* Unit tests */
check('slices of one from one' function||'(1, "1")',,
      function||'(1, "1")',, 'to be', '1')

check('slices of one from two' function||'(1, "12")',,
      function||'(1, "12")',, 'to be', '1 2')

check('slices of two' function||'(2, "35")',,
      function||'(2, "35")',, 'to be', '35')

check('slices of two overlap' function||'(2, "9142")',,
      function||'(2, "9142")',, 'to be', '91 14 42')

check('slices can include duplicates' function||'(3, "777777")',,
      function||'(3, "777777")',, 'to be', '777 777 777 777')

check('slices of a long series' function||'(5, "918493904243")',,
      function||'(5, "918493904243")',, 'to be', '91849 18493 84939 49390 93904 39042 90424 04243')

check('slice length is too large' function||'(6, "12345")',,
      function||'(6, "12345")',, 'to be', '')

check('slice length is way too large' function||'(30, "12345")',,
      function||'(30, "12345")',, 'to be', '')

check('slice length cannot be zero' function||'(0, "12345")',,
      function||'(0, "12345")',, 'to be', '')

check('slice length cannot be negative' function||'(-1, "12345")',,
      function||'(-1, "12345")',, 'to be', '')

check('empty series is invalid' function||'(1, "")',,
      function||'(1, "")',, 'to be', '')

