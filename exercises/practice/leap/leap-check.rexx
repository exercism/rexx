/* Unit Test Runner: t-rexx */
context('Checking the IsLeapYear function')

/* Unit tests */
check('year not divisible by 4 in common year' 'IsLeapYear(2015)',,
      'IsLeapYear(2015)',, 'to be', 0)

check('year divisible by 2, not divisible by 4 in common year' 'IsLeapYear(1970)',,
      'IsLeapYear(1970)',, 'to be', 0)

check('year divisible by 4, not divisible by 100 in leap year' 'IsLeapYear(1996)',,
      'IsLeapYear(1996)',, 'to be', 1)

check('year divisible by 4 and 5 is still a leap year' 'IsLeapYear(1960)',,
      'IsLeapYear(1960)',, 'to be', 1)

check('year divisible by 100, not divisible by 400 in common year' 'IsLeapYear(2100)',,
      'IsLeapYear(2100)',, 'to be', 0)

check('year divisible by 100 but not by 3 is still not a leap year' 'IsLeapYear(1900)',,
      'IsLeapYear(1900)',, 'to be', 0)

check('year divisible by 400 is leap year' 'IsLeapYear(2000)',,
      'IsLeapYear(2000)',, 'to be', 1)

check('year divisible by 400 but not by 125 is still a leap year' 'IsLeapYear(2400)',,
      'IsLeapYear(2400)',, 'to be', 1)

check('year divisible by 200, not divisible by 400 in common year' 'IsLeapYear(1800)',,
      'IsLeapYear(1800)',, 'to be', 0)

