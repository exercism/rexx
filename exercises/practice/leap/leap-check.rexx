/* Unit Test Runner: t-rexx */
function = 'IsLeapYear'
context('Checking the' function 'function')

/* Unit tests */
check('year not divisible by 4 in common year' function||'(2015)',,
      function||'(2015)',, 'to be', 0)

check('year divisible by 2, not divisible by 4 in common year' function||'(1970)',,
      function||'(1970)',, 'to be', 0)

check('year divisible by 4, not divisible by 100 in leap year' function||'(1996)',,
      function||'(1996)',, 'to be', 1)

check('year divisible by 4 and 5 is still a leap year' function||'(1960)',,
      function||'(1960)',, 'to be', 1)

check('year divisible by 100, not divisible by 400 in common year' function||'(2100)',,
      function||'(2100)',, 'to be', 0)

check('year divisible by 100 but not by 3 is still not a leap year' function||'(1900)',,
      function||'(1900)',, 'to be', 0)

check('year divisible by 400 is leap year' function||'(2000)',,
      function||'(2000)',, 'to be', 1)

check('year divisible by 400 but not by 125 is still a leap year' function||'(2400)',,
      function||'(2400)',, 'to be', 1)

check('year divisible by 200, not divisible by 400 in common year' function||'(1800)',,
      function||'(1800)',, 'to be', 0)

