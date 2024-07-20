/* Unit Test Runner: t-rexx */
function = 'From'
context('Checking the' function 'function')

/* Test Options */
numeric digits 20

/* Unit tests */
check('date only specification of time' function||'("2011-04-25")',,
      function||'("2011-04-25")',, '=', '2043-01-01 01:46:40')

check('second test for date only specification of time' function||'("1977-06-13")',,
      function||'("1977-06-13")',, '=', '2009-02-19 01:46:40')

check('third test for date only specification of time' function||'("1959-07-19")',,
      function||'("1959-07-19")',, '=', '1991-03-27 01:46:40')

check('full time specified' function||'("2015-01-24", "22:00:00")',,
      function||'("2015-01-24", "22:00:00")',, '=', '2046-10-02 23:46:40')

check('full time with day roll-over' function||'("2015-01-24", "23:59:59")',,
      function||'("2015-01-24", "23:59:59")',,'=', '2046-10-03 01:46:39')

