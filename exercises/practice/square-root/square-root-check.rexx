/* Unit Test Runner: t-rexx */
context('Checking the SquareRoot function')

/* Unit tests */
check('root of 1' 'SquareRoot(1)',,
      'SquareRoot(1)',, '=', 1)

check('root of 4' 'SquareRoot(4)',,
      'SquareRoot(4)',, '=', 2)

check('root of 25' 'SquareRoot(25)',,
      'SquareRoot(25)',, '=', 5)

check('root of 81''SquareRoot(81)',,
      'SquareRoot(81)',, '=', 9)

check('root of 196' 'SquareRoot(196)',,
      'SquareRoot(196)',, '=', 14)

check('root of 65025' 'SquareRoot(65025)',,
      'SquareRoot(65025)',, '=', 255)

