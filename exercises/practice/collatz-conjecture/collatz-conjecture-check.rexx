/* Unit Test Runner: t-rexx */
function = 'Steps'
context('Checking the' function 'function')

/* Set test-specific options */
numeric digits 20

/* Unit tests */
check('zero steps for one' function||'(1)',,
      function||'(1)',, 'to be', 0)

check('divide if even' function||'(16)',,
      function||'(16)',, 'to be', 4)

check('even and odd steps' function||'(12)',,
      function||'(12)',, 'to be', 9)

check('large number of even and odd steps' function||'(1000000)',,
      function||'(1000000)',, 'to be', 152)

check('zero is an error' function||'(0)',,
      function||'(0)',, 'to be', -1)

check('negative value is an error' function||'(-1)',,
      function||'(-1)',, 'to be', -1)

