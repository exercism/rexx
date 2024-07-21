/* Unit Test Runner: t-rexx */
context('Checking the From function')

/* Test Options */
numeric digits 20

/* Unit tests */
check('date only specification of time' 'From("2011-04-25")',,
      'From("2011-04-25")',, '=', '2043-01-01 01:46:40')

check('second test for date only specification of time' 'From("1977-06-13")',,
      'From("1977-06-13")',, '=', '2009-02-19 01:46:40')

check('third test for date only specification of time' 'From("1959-07-19")',,
      'From("1959-07-19")',, '=', '1991-03-27 01:46:40')

check('full time specified' 'From("2015-01-24", "22:00:00")',,
      'From("2015-01-24", "22:00:00")',, '=', '2046-10-02 23:46:40')

check('full time with day roll-over' 'From("2015-01-24", "23:59:59")',,
      'From("2015-01-24", "23:59:59")',, '=', '2046-10-03 01:46:39')

