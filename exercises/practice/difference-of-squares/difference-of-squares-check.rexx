/* Unit Test Runner: t-rexx */
context('Checking the SquareOfSum, SumOfSquares, and Difference functions')

/* Unit tests */
function = 'SquareOfSum'
check('Square the sum of the numbers up to the given number' function||'(1)',,
      function||'(1)',, 'to be', 1)

check('Square the sum of the numbers up to the given number' function||'(5)',,
      function||'(5)',, 'to be', 225)

check('Square the sum of the numbers up to the given number' function||'(100)',,
      function||'(100)',, 'to be', 25502500)

function = 'SumOfSquares'
check('Sum the squares of the numbers up to the given number' function||'(1)',,
      function||'(1)',, 'to be', 1)

check('Sum the squares of the numbers up to the given number' function||'(5)',,
      function||'(5)',, 'to be', 55)

check('Sum the squares of the numbers up to the given number' function||'(100)',,
      function||'(100)',, 'to be', 338350)

function = 'Difference'
check('Subtract sum of squares from square of sums' function||'(1)',,
      function||'(1)',, 'to be', 0)

check('Subtract sum of squares from square of sums' function||'(5)',,
      function||'(5)',, 'to be', 170)

check('Subtract sum of squares from square of sums' function||'(100)',,
      function||'(100)',, 'to be', 25164150)

