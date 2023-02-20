/* Unit Test Runner: t-rexx */
function = 'IsTriangleType'
context('Checking the' function 'function')

/* Unit tests */
check('equilateral triangle' function||'(2, 2, 2, "equilateral")' 'all side are equal',,
      function||'(2, 2, 2, "equilateral")',, 'to be', 1)

check('equilateral triangle' function||'(4, 4, 6, "equilateral")' 'any side is unequal',,
      function||'(4, 4, 6, "equilateral")',, 'to be', 0)

check('equilateral triangle' function||'(4, 5, 6, "equilateral")' 'no sides are equal',,
      function||'(4, 5, 6, "equilateral")',, 'to be', 0)

check('equilateral triangle' function||'(0, 0, 0, "equilateral")' 'all zero sides is not a triangle',,
      function||'(0, 0, 0, "equilateral")',, 'to be', -1)

check('equilateral triangle' function||'(1.5, 1.5, 1.5, "equilateral")' 'sides may be floats',,
      function||'(1.5, 1.5, 1.5, "equilateral")',, 'to be', 1)

check('isosceles triangle' function||'(6, 4, 4, "isosceles")' 'last two sides are equal',,
      function||'(6, 4, 4, "isosceles")',, 'to be', 1)

check('isosceles triangle' function||'(4, 4, 6, "isosceles")' 'first two sides are equal',,
      function||'(4, 4, 6, "isosceles")',, 'to be', 1)

check('isosceles triangle' function||'(4, 6, 4, "isosceles")' 'first and last sides are equal',,
      function||'(4, 6, 4, "isosceles")',, 'to be', 1)

check('isosceles triangle' function||'(4, 4, 4, "isosceles")' 'equilaterl triangles are also isosceles',,
      function||'(4, 4, 4, "isosceles")',, 'to be', 1)

check('isosceles triangle' function||'(4, 5, 6, "isosceles")' 'no sides are equal',,
      function||'(4, 5, 6, "isosceles")',, 'to be', 0)

check('isosceles triangle' function||'(1, 1, 3, "isosceles")' 'first triangle inequality violation',,
      function||'(1, 1, 3, "isosceles")',, 'to be', -1)

check('isosceles triangle' function||'(1, 3, 1, "isosceles")' 'second triangle inequality violation',,
      function||'(1, 3, 1, "isosceles")',, 'to be', -1)

check('isosceles triangle' function||'(3, 1, 1, "isosceles")' 'second triangle inequality violation',,
      function||'(3, 1, 1, "isosceles")',, 'to be', -1)

check('isosceles triangle' function||'(1.5, 1.5, 2.5, "isosceles")' 'sides may be floats',,
      function||'(1.5, 1.5, 2.5, "isosceles")',, 'to be', 1)

check('scalene triangle' function||'(2, 2, 2, "scalene")' 'all side are equal',,
      function||'(2, 2, 2, "scalene")',, 'to be', 0)

check('scalene triangle' function||'(4, 5, 6, "scalene")' 'no sides are equal',,
      function||'(4, 5, 6, "scalene")',, 'to be', 1)

check('scalene triangle' function||'(6, 4, 4, "scalene")' 'last two sides are equal',,
      function||'(6, 4, 4, "scalene")',, 'to be', 0)

check('scalene triangle' function||'(4, 4, 6, "scalene")' 'first two sides are equal',,
      function||'(4, 4, 6, "scalene")',, 'to be', 0)

check('scalene triangle' function||'(4, 6, 4, "scalene")' 'first and last sides are equal',,
      function||'(4, 6, 4, "scalene")',, 'to be', 0)

check('scalene triangle' function||'(4.5, 5.5, 6.5, "scalene")' 'sides may be floats',,
      function||'(4.5, 5.5, 6.5, "scalene")',, 'to be', 1)

