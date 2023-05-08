/* Unit Test Runner: t-rexx */
context('Checking the Factors function')

/* Test Options */
numeric digits 20

/* Unit tests */
check('no factors' 'Factors(1)',,
      'Factors(1)',, 'to be', '')

check('prime number' 'Factors(2)',,
      'Factors(2)',, 'to be', '2')

check('another prime number' 'Factors(31)',,
      'Factors(31)',, 'to be', '31')

check('square of a prime' 'Factors(9)',,
      'Factors(9)',, 'to be', '3 3')

check('product of first prime' 'Factors(20)',,
      'Factors(20)',, 'to be', '2 2 5')

check('cube of a prime' 'Factors(8)',,
      'Factors(8)',, 'to be', '2 2 2')

check('product of second prime' 'Factors(33)',,
      'Factors(33)',, 'to be', '3 11')

check('product of third prime' 'Factors(75)',,
      'Factors(75)',, 'to be', '3 5 5')

check('product of first and second prime' 'Factors(6)',,
      'Factors(6)',, 'to be', '2 3')

check('product of primes and non-primes' 'Factors(18)',,
      'Factors(18)',, 'to be', '2 3 3')

check('product of primes' 'Factors(901255)',,
      'Factors(901255)',, 'to be', '5 17 23 461')

check('factors include a large prime' 'Factors(93819012551)',,
      'Factors(93819012551)',, 'to be', '11 9539 894119')

