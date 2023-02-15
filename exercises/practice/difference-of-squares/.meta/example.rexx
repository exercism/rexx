SumOfSquares : procedure
  parse arg n
return n * (n + 1) * (2 * n + 1) / 6

SquareOfSum : procedure
  parse arg n
return (n * (n + 1) / 2) ** 2

Difference : procedure
  parse arg n
return SquareOfSum(n) - SumOfSquares(n)

