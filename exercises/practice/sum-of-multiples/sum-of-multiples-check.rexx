/* Unit Test Runner: t-rexx */
function = 'Sum'
context('Checking the' function 'function')

/* Unit tests */
check('no multiples within limit' function||'("3 5", 1)',,
       function||'("3 5", 1)',, 'to be', 0)

check('one factor has multiples within limit' function||'("3 5", 4)',,
       function||'("3 5", 4)',, 'to be', 3)

check('more than one multiple within limit' function||'("3", 7)',,
       function||'("3", 7)',, 'to be', 9)

check('more than one factor with multiples within limit' function||'("3 5", 10)',,
       function||'("3 5", 10)',, 'to be', 23)

check('each multiple is only counted once' function||'("3 5", 100)',,
       function||'("3 5", 100)',, 'to be', 2318)

check('a much larger limit' function||'("3 5", 1000)',,
       function||'("3 5", 1000)',, 'to be', 233168)

check('three factors' function||'("7 13 17", 20)',,
       function||'("7 13 17", 20)',, 'to be', 51)

check('factors not relatively prime' function||'("4 6", 15)',,
       function||'("4 6", 15)',, 'to be', 30)

check('some pairs of factors relatively prime and some not' function||'("5 6 8", 150)',,
       function||'("5 6 8", 150)',, 'to be', 4419)

check('one factor is a multiple of another' function||'("5 25", 51)',,
       function||'("5 25", 51)',, 'to be', 275)

check('much larger factors' function||'("43 47", 10000)',,
       function||'("43 47", 10000)',, 'to be', 2203160)

check('all numbers are multiples of 1' function||'("1", 100)',,
       function||'("1", 100)',, 'to be', 4950)

check('no factors means an empty sum' function||'("", 10000)',,
       function||'("", 10000)',, 'to be', 0)

check('the only multiple of 0 is 0' function||'("0", 1)',,
       function||'("0", 1)',, 'to be', 0)

check('the factor 0 does not affect the sum of multiples of other factors' function||'("0 3", 4)',,
       function||'("0 3", 4)',, 'to be', 3)

check('solutions using include-exclude must extend to cardinality greater than 3' function||'("2 3 5 7 11", 10000)',,
       function||'("2 3 5 7 11", 10000)',, 'to be', 39614537)

