/* Unit Test Runner: t-rexx */
context('Checking the Square, and Total functions')

/* Set test-specific options */
numeric digits 20

/* Unit tests */
function = 'Square'

check('Returns the number of grains on the square' function||'(1)',,
      function||'(1)',, 'to be', 1)

check('Returns the number of grains on the square' function||'(2)',,
      function||'(2)',, 'to be', 2)

check('Returns the number of grains on the square' function||'(3)',,
      function||'(3)',, 'to be', 4)

check('Returns the number of grains on the square' function||'(4)',,
      function||'(4)',, 'to be', 8)

check('Returns the number of grains on the square' function||'(16)',,
      function||'(16)',, 'to be', 32768)

check('Returns the number of grains on the square' function||'(32)',,
      function||'(32)',, 'to be', 2147483648)

check('Returns the number of grains on the square' function||'(64)',,
      function||'(64)',, 'to be', 9223372036854775808)

check('Square 0 raises an exception' function||'(0)',,
      function||'(0)',, 'to be', -1)

check('Negative square raises an exception' function||'(-1)',,
      function||'(-1)',, 'to be', -1)

check('Square greater than 64 raises an exception' function||'(65)',,
      function||'(65)',, 'to be', -1)

function = 'Total'
check('Returns the total number of grains on the board' function||'()',,
      function||'()',, 'to be', 18446744073709551615)

