/* Unit Test Runner: t-rexx */
function = 'ClassifyNumber'
context('Checking the' function 'function')

/* Test opttions */
numeric digits 20

/* Unit tests */
check('Perfect numbers -> Smallest perfect number is classified correctly' function||'(6)',,
      function||'(6)',, 'to be', 'PERFECT')

check('Perfect numbers -> Medium perfect number is classified correctly' function||'(28)',,
      function||'(28)',, 'to be', 'PERFECT')

check('Perfect numbers -> Large perfect number is classified correctly' function||'(33550336)',,
      function||'(33550336)',, 'to be', 'PERFECT')

check('Abundant numbers -> Smallest abundant number is classified correctly' function||'(12)',,
      function||'(12)',, 'to be', 'ABUNDANT')

check('Abundant numbers -> Medium abundant number is classified correctly' function||'(30)',,
      function||'(30)',, 'to be', 'ABUNDANT')

check('Abundant numbers -> Large abundant number is classified correctly' function||'(33550335)',,
      function||'(33550335)',, 'to be', 'ABUNDANT')

check('Deficient numbers -> Smallest prime deficient number is classified correctly' function||'(2)',,
      function||'(2)',, 'to be', 'DEFICIENT')

check('Deficient numbers -> Smallest non-prime deficient number is classified correctly' function||'(4)',,
      function||'(4)',, 'to be', 'DEFICIENT')

check('Deficient numbers -> Medium deficient number is classified correctly' function||'(32)',,
      function||'(32)',, 'to be', 'DEFICIENT')

check('Deficient numbers -> Large deficient number is classified correctly' function||'(33550337)',,
      function||'(33550337)',, 'to be', 'DEFICIENT')

check('Deficient numbers -> Edge case (no factors other than itself) is classified correctly' function||'(1)',,
      function||'(1)',, 'to be', 'DEFICIENT')

check('Invalid inputs -> Zero is rejected (as it is not a positive integer)' function||'(0)',,
      function||'(0)',, 'to be', '')

check('Invalid inputs -> Negative integer is rejected (as it is not a positive integer)' function||'(-1)',,
      function||'(-1)',, 'to be', '')

