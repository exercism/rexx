/* Unit Test Runner: t-rexx */
function = 'IsArmstrongNumber'
context('Checking the' function 'function')

/* Unit tests */
check('Zero is an Armstrong number' function||'(0)',,
      function||'(0)',, 'to be', 1)

check('Single-digit numbers are Armstrong numbers' function||'(5)',,
      function||'(5)',, 'to be', 1)

check('There are no two-digit Armstrong numbers' function||'(10)',,
      function||'(10)',, 'to be', 0)

check('Three-digit number that is an Armstrong number' function||'(153)',,
      function||'(153)',, 'to be', 1)

check('Three-digit number that is not an Armstrong number' function||'(100)',,
      function||'(100)',, 'to be', 0)

check('Four-digit number that is an Armstrong number' function||'(9474)',,
      function||'(9474)',, 'to be', 1)

check('Four-digit number that is not an Armstrong number' function||'(9475)',,
      function||'(9475)',, 'to be', 0)

check('Seven-digit number that is an Armstrong number' function||'(9926315)',,
      function||'(9926315)',, 'to be', 1)

check('Seven-digit number that is not an Armstrong number' function||'(9926314)',,
      function||'(9926314)',, 'to be', 0)

