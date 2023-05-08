/* Unit Test Runner: t-rexx */
context('Checking the Sum function')

/* Unit tests */
check('no multiples within limit' 'Sum("3 5", 1)',,
      'Sum("3 5", 1)',, 'to be', 0)

check('one factor has multiples within limit' 'Sum("3 5", 4)',,
      'Sum("3 5", 4)',, 'to be', 3)

check('more than one multiple within limit' 'Sum("3", 7)',,
      'Sum("3", 7)',, 'to be', 9)

check('more than one factor with multiples within limit' 'Sum("3 5", 10)',,
      'Sum("3 5", 10)',, 'to be', 23)

check('each multiple is only counted once' 'Sum("3 5", 100)',,
      'Sum("3 5", 100)',, 'to be', 2318)

check('a much larger limit' 'Sum("3 5", 1000)',,
      'Sum("3 5", 1000)',, 'to be', 233168)

check('three factors' 'Sum("7 13 17", 20)',,
      'Sum("7 13 17", 20)',, 'to be', 51)

check('factors not relatively prime' 'Sum("4 6", 15)',,
      'Sum("4 6", 15)',, 'to be', 30)

check('some pairs of factors relatively prime and some not' 'Sum("5 6 8", 150)',,
      'Sum("5 6 8", 150)',, 'to be', 4419)

check('one factor is a multiple of another' 'Sum("5 25", 51)',,
      'Sum("5 25", 51)',, 'to be', 275)

check('much larger factors' 'Sum("43 47", 10000)',,
      'Sum("43 47", 10000)',, 'to be', 2203160)

check('all numbers are multiples of 1' 'Sum("1", 100)',,
      'Sum("1", 100)',, 'to be', 4950)

check('no factors means an empty sum' 'Sum("", 10000)',,
      'Sum("", 10000)',, 'to be', 0)

check('the only multiple of 0 is 0' 'Sum("0", 1)',,
      'Sum("0", 1)',, 'to be', 0)

check('the factor 0 does not affect the sum of multiples of other factors' 'Sum("0 3", 4)',,
      'Sum("0 3", 4)',, 'to be', 3)

check('solutions using include-exclude must extend to cardinality greater than 3' 'Sum("2 3 5 7 11", 10000)',,
      'Sum("2 3 5 7 11", 10000)',, 'to be', 39614537)

