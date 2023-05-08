/* Unit Test Runner: t-rexx */
context('Checking the IsTriangleType function')

/* Unit tests */
check('equilateral triangle - all side are equal' 'IsTriangleType(2, 2, 2, "equilateral")',,
      'IsTriangleType(2, 2, 2, "equilateral")',, 'to be', 1)

check('equilateral triangle - any side is unequal' 'IsTriangleType(4, 4, 6, "equilateral")',,
      'IsTriangleType(4, 4, 6, "equilateral")',, 'to be', 0)

check('equilateral triangle - no sides are equal' 'IsTriangleType(4, 5, 6, "equilateral")',,
      'IsTriangleType(4, 5, 6, "equilateral")',, 'to be', 0)

check('equilateral triangle - all zero sides is not a triangle' 'IsTriangleType(0, 0, 0, "equilateral")',,
      'IsTriangleType(0, 0, 0, "equilateral")',, 'to be', -1)

check('equilateral triangle - sides may be floats' 'IsTriangleType(1.5, 1.5, 1.5, "equilateral")',,
      'IsTriangleType(1.5, 1.5, 1.5, "equilateral")',, 'to be', 1)

check('isosceles triangle - last two sides are equal' 'IsTriangleType(6, 4, 4, "isosceles")',,
      'IsTriangleType(6, 4, 4, "isosceles")',, 'to be', 1)

check('isosceles triangle - first two sides are equal' 'IsTriangleType(4, 4, 6, "isosceles")',,
      'IsTriangleType(4, 4, 6, "isosceles")',, 'to be', 1)

check('isosceles triangle - first and last sides are equal' 'IsTriangleType(4, 6, 4, "isosceles")',,
      'IsTriangleType(4, 6, 4, "isosceles")',, 'to be', 1)

check('isosceles triangle - equilaterl triangles are also isosceles' 'IsTriangleType(4, 4, 4, "isosceles")',,
      'IsTriangleType(4, 4, 4, "isosceles")',, 'to be', 1)

check('isosceles triangle - no sides are equal' 'IsTriangleType(4, 5, 6, "isosceles")',,
      'IsTriangleType(4, 5, 6, "isosceles")',, 'to be', 0)

check('isosceles triangle - first triangle inequality violation' 'IsTriangleType(1, 1, 3, "isosceles")',,
      'IsTriangleType(1, 1, 3, "isosceles")',, 'to be', -1)

check('isosceles triangle - second triangle inequality violation' 'IsTriangleType(1, 3, 1, "isosceles")',,
      'IsTriangleType(1, 3, 1, "isosceles")',, 'to be', -1)

check('isosceles triangle - third triangle inequality violation' 'IsTriangleType(3, 1, 1, "isosceles")',,
      'IsTriangleType(3, 1, 1, "isosceles")',, 'to be', -1)

check('isosceles triangle - sides may be floats' 'IsTriangleType(1.5, 1.5, 2.5, "isosceles")',,
      'IsTriangleType(1.5, 1.5, 2.5, "isosceles")',, 'to be', 1)

check('scalene triangle - all side are equal' 'IsTriangleType(2, 2, 2, "scalene")',,
      'IsTriangleType(2, 2, 2, "scalene")',, 'to be', 0)

check('scalene triangle - no sides are equal' 'IsTriangleType(4, 5, 6, "scalene")',,
      'IsTriangleType(4, 5, 6, "scalene")',, 'to be', 1)

check('scalene triangle - last two sides are equal' 'IsTriangleType(6, 4, 4, "scalene")',,
      'IsTriangleType(6, 4, 4, "scalene")',, 'to be', 0)

check('scalene triangle - first two sides are equal' 'IsTriangleType(4, 4, 6, "scalene")',,
      'IsTriangleType(4, 4, 6, "scalene")',, 'to be', 0)

check('scalene triangle - first and last sides are equal' 'IsTriangleType(4, 6, 4, "scalene")',,
      'IsTriangleType(4, 6, 4, "scalene")',, 'to be', 0)

check('scalene triangle - sides may be floats' 'IsTriangleType(4.5, 5.5, 6.5, "scalene")',,
      'IsTriangleType(4.5, 5.5, 6.5, "scalene")',, 'to be', 1)

