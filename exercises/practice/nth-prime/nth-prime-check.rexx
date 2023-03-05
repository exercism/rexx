/* Unit Test Runner: t-rexx */
function = 'NthPrime'
context('Checking the' function 'function')

/* Test options */
numeric digits 6

/* Unit tests */
check('first prime' function||'(1)',,
      function||'(1)',, 'to be', 2)

check('second prime' function||'(2)',,
      function||'(2)',, 'to be', 3)

check('sixth prime' function||'(6)',,
      function||'(6)',, 'to be', 13)

check('big prime' function||'(10001)',,
      function||'(10001)',, 'to be', 104743)

check('there is no zeroth prime' function||'(0)',,
      function||'(0)',, 'to be', -1)

