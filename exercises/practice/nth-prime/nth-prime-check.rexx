/* Unit Test Runner: t-rexx */
context('Checking the NthPrime function')

/* Test Options */
numeric digits 6

/* Unit tests */
check('first prime' 'NthPrime(1)',,
      'NthPrime(1)',, '=', 2)

check('second prime' 'NthPrime(2)',,
      'NthPrime(2)',, '=', 3)

check('sixth prime' 'NthPrime(6)',,
      'NthPrime(6)',, '=', 13)

check('big prime' 'NthPrime(10001)',,
      'NthPrime(10001)',, '=', 104743)

check('there is no zeroth prime' 'NthPrime(0)',,
      'NthPrime(0)',, '=', -1)

