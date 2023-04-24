/* Unit Test Runner: t-rexx */
context('Checking the Square, and Total functions')

/* Test Options */
numeric digits 20

/* Unit tests */
check('Returns the number of grains on the square' 'Square(1)',,
      'Square(1)',, 'to be', 1)

check('Returns the number of grains on the square' 'Square(2)',,
      'Square(2)',, 'to be', 2)

check('Returns the number of grains on the square' 'Square(3)',,
      'Square(3)',, 'to be', 4)

check('Returns the number of grains on the square' 'Square(4)',,
      'Square(4)',, 'to be', 8)

check('Returns the number of grains on the square' 'Square(16)',,
      'Square(16)',, 'to be', 32768)

check('Returns the number of grains on the square' 'Square(32)',,
      'Square(32)',, 'to be', 2147483648)

check('Returns the number of grains on the square' 'Square(64)',,
      'Square(64)',, 'to be', 9223372036854775808)

check('Square 0 raises an exception' 'Square(0)',,
      'Square(0)',, 'to be', -1)

check('Negative square raises an exception' 'Square(-1)',,
      'Square(-1)',, 'to be', -1)

check('Square greater than 64 raises an exception' 'Square(65)',,
      'Square(65)',, 'to be', -1)

check('Returns the total number of grains on the board' 'Total()',,
      'Total()',, 'to be', 18446744073709551615)

