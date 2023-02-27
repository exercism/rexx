/* Unit Test Runner: t-rexx */
function = 'SquareRoot'
context('Checking the' function 'function')

/* Unit tests */
check('root of 1' function||'(1)',,
      function||'(1)',, 'to be', 1)

check('root of 4' function||'(4)',,
      function||'(4)',, 'to be', 2)

check('root of 25' function||'(25)',,
      function||'(25)',, 'to be', 5)

check('root of 81'function||'(81)',,
      function||'(81)',, 'to be', 9)

check('root of 196' function||'(196)',,
      function||'(196)',, 'to be', 14)

check('root of 65025' function||'(65025)',,
      function||'(65025)',, 'to be', 255)

