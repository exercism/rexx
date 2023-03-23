/* Unit Test Runner: t-rexx */
function = 'IsValid'
context('Checking the' function 'function')

/* Unit tests */
check('valid isbn number' function||'("3-598-21508-8")',,
      function||'("3-598-21508-8")',, 'to be', 1)

check('invalid isbn check digit' function||'("3-598-21508-9")',,
      function||'("3-598-21508-9")',, 'to be', 0)

check('valid isbn number with a check digit of 10' function||'("3-598-21507-X")',,
      function||'("3-598-21507-X")',, 'to be', 1)

check('check digit is a character other than x' function||'("3-598-21507-A")',,
      function||'("3-598-21507-A")',, 'to be', 0)

check('invalid character in isbn' function||'("3-598-P1581-X")',,
      function||'("3-598-P1581-X")',, 'to be', 0)

check('x is only valid as a check digit' function||'("3-598-2X507-9")',,
      function||'("3-598-2X507-9")',, 'to be', 0)

check('valid isbn without separating dashes' function||'("3598215088")',,
      function||'("3598215088")',, 'to be', 1)

check('isbn without separating dashes and x as check digit' function||'("359821507X")',,
      function||'("359821507X")',, 'to be', 1)

check('isbn without check digit and dashes' function||'("359821507")',,
      function||'("359821507")',, 'to be', 0)

check('too long isbn and no dashes' function||'("3598215078X")',,
      function||'("3598215078X")',, 'to be', 0)

check('too short isbn' function||'("00")',,
      function||'("00")',, 'to be', 0)

check('isbn without check digit' function||'("3-598-21507")',,
      function||'("3-598-21507")',, 'to be', 0)

check('check digit of x should not be used for 0' function||'("3-598-21515-X")',,
      function||'("3-598-21515-X")',, 'to be', 0)

check('empty isbn' function||'("")',,
      function||'("")',, 'to be', 0)

check('input is 9 characters' function||'("134456729")',,
      function||'("134456729")',, 'to be', 0)

check('invalid characters are not ignored' function||'("3132P34035")',,
      function||'("3132P34035")',, 'to be', 0)

check('input is too long but contains a valid isbn' function||'("98245726788")',,
      function||'("98245726788")',, 'to be', 0)

