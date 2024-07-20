/* Unit Test Runner: t-rexx */
context('Checking the ClassifyNumber function')

/* Test opttions */
numeric digits 20

/* Unit tests */
check('Perfect numbers -> Smallest perfect number is classified correctly' 'ClassifyNumber(6)',,
      'ClassifyNumber(6)',, '=', 'PERFECT')

check('Perfect numbers -> Medium perfect number is classified correctly' 'ClassifyNumber(28)',,
      'ClassifyNumber(28)',, '=', 'PERFECT')

check('Perfect numbers -> Large perfect number is classified correctly' 'ClassifyNumber(33550336)',,
      'ClassifyNumber(33550336)',, '=', 'PERFECT')

check('Abundant numbers -> Smallest abundant number is classified correctly' 'ClassifyNumber(12)',,
      'ClassifyNumber(12)',, '=', 'ABUNDANT')

check('Abundant numbers -> Medium abundant number is classified correctly' 'ClassifyNumber(30)',,
      'ClassifyNumber(30)',, '=', 'ABUNDANT')

check('Abundant numbers -> Large abundant number is classified correctly' 'ClassifyNumber(33550335)',,
      'ClassifyNumber(33550335)',, '=', 'ABUNDANT')

check('Deficient numbers -> Smallest prime deficient number is classified correctly' 'ClassifyNumber(2)',,
      'ClassifyNumber(2)',, '=', 'DEFICIENT')

check('Deficient numbers -> Smallest non-prime deficient number is classified correctly' 'ClassifyNumber(4)',,
      'ClassifyNumber(4)',, '=', 'DEFICIENT')

check('Deficient numbers -> Medium deficient number is classified correctly' 'ClassifyNumber(32)',,
      'ClassifyNumber(32)',, '=', 'DEFICIENT')

check('Deficient numbers -> Large deficient number is classified correctly' 'ClassifyNumber(33550337)',,
      'ClassifyNumber(33550337)',, '=', 'DEFICIENT')

check('Deficient numbers -> Edge case (no factors other than itself) is classified correctly' 'ClassifyNumber(1)',,
      'ClassifyNumber(1)',, '=', 'DEFICIENT')

check('Invalid inputs -> Zero is rejected (as it is not a positive integer)' 'ClassifyNumber(0)',,
      'ClassifyNumber(0)',, '=', '')

check('Invalid inputs -> Negative integer is rejected (as it is not a positive integer)' 'ClassifyNumber(-1)',,
      'ClassifyNumber(-1)',, '=', '')

