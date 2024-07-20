/* Unit Test Runner: t-rexx */
context('Checking the IsArmstrongNumber function')

/* Unit tests */
check('Zero is an Armstrong number' 'IsArmstrongNumber(0)',,
      'IsArmstrongNumber(0)',, '=', 1)

check('Single-digit numbers are Armstrong numbers' 'IsArmstrongNumber(5)',,
      'IsArmstrongNumber(5)',, '=', 1)

check('There are no two-digit Armstrong numbers' 'IsArmstrongNumber(10)',,
      'IsArmstrongNumber(10)',, '=', 0)

check('Three-digit number that is an Armstrong number' 'IsArmstrongNumber(153)',,
      'IsArmstrongNumber(153)',, '=', 1)

check('Three-digit number that is not an Armstrong number' 'IsArmstrongNumber(100)',,
      'IsArmstrongNumber(100)',, '=', 0)

check('Four-digit number that is an Armstrong number' 'IsArmstrongNumber(9474)',,
      'IsArmstrongNumber(9474)',, '=', 1)

check('Four-digit number that is not an Armstrong number' 'IsArmstrongNumber(9475)',,
      'IsArmstrongNumber(9475)',, '=', 0)

check('Seven-digit number that is an Armstrong number' 'IsArmstrongNumber(9926315)',,
      'IsArmstrongNumber(9926315)',, '=', 1)

check('Seven-digit number that is not an Armstrong number' 'IsArmstrongNumber(9926314)',,
      'IsArmstrongNumber(9926314)',, '=', 0)

