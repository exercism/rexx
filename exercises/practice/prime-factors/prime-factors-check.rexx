/* Unit Test Runner: t-rexx */
function = 'Factors'
context('Checking the' function 'function')

/* Test Options */
numeric digits 20

/* Unit tests */
check('no factors' function||'(1)',,
      function||'(1)',, 'to be', '')

check('prime number' function||'(2)',,
      function||'(2)',, 'to be', '2')

check('another prime number' function||'(31)',,
      function||'(31)',, 'to be', '31')

check('square of a prime' function||'(9)',,
      function||'(9)',, 'to be', '3 3')

check('product of first prime' function||'(20)',,
      function||'(20)',, 'to be', '2 2 5')

check('cube of a prime' function||'(8)',,
      function||'(8)',, 'to be', '2 2 2')

check('product of second prime' function||'(33)',,
      function||'(33)',, 'to be', '3 11')

check('product of third prime' function||'(75)',,
      function||'(75)',, 'to be', '3 5 5')

check('product of first and second prime' function||'(6)',,
      function||'(6)',, 'to be', '2 3')

check('product of primes and non-primes' function||'(18)',,
      function||'(18)',, 'to be', '2 3 3')

check('product of primes' function||'(901255)',,
      function||'(901255)',, 'to be', '5 17 23 461')

check('factors include a large prime' function||'(93819012551)',,
      function||'(93819012551)',, 'to be', '11 9539 894119')

