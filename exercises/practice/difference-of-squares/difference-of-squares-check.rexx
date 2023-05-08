/* Unit Test Runner: t-rexx */
context('Checking the SquareOfSum, SumOfSquares, and Difference functions')

/* Unit tests */
check('Square the sum of the numbers up to the given number' 'SquareOfSum(1)',,
      'SquareOfSum(1)',, 'to be', 1)

check('Square the sum of the numbers up to the given number' 'SquareOfSum(5)',,
      'SquareOfSum(5)',, 'to be', 225)

check('Square the sum of the numbers up to the given number' 'SquareOfSum(100)',,
      'SquareOfSum(100)',, 'to be', 25502500)

check('Sum the squares of the numbers up to the given number' 'SumOfSquares(1)',,
      'SumOfSquares(1)',, 'to be', 1)

check('Sum the squares of the numbers up to the given number' 'SumOfSquares(5)',,
      'SumOfSquares(5)',, 'to be', 55)

check('Sum the squares of the numbers up to the given number' 'SumOfSquares(100)',,
      'SumOfSquares(100)',, 'to be', 338350)

check('Subtract sum of squares from square of sums' 'Difference(1)',,
      'Difference(1)',, 'to be', 0)

check('Subtract sum of squares from square of sums' 'Difference(5)',,
      'Difference(5)',, 'to be', 170)

check('Subtract sum of squares from square of sums' 'Difference(100)',,
      'Difference(100)',, 'to be', 25164150)

