/* Unit Test Runner: t-rexx */
context('Checking the ColorCode function')

/* Unit tests */
check('Color codes -> Brown and black' 'ColorCode("Brown Black")',,
      'ColorCode("Brown Black")',, 'to be', 10)

check('Color codes -> Blue and grey' 'ColorCode("Blue Grey")',,
      'ColorCode("Blue Grey")',, 'to be', 68)

check('Color codes -> Yellow and violet' 'ColorCode("Yellow Violet")',,
      'ColorCode("Yellow Violet")',, 'to be', 47)

check('Color codes -> White and red' 'ColorCode("White Red")',,
      'ColorCode("White Red")',, 'to be', 92)

check('Color codes -> Orange and orange' 'ColorCode("Orange Orange")',,
      'ColorCode("Orange Orange")',, 'to be', 33)

check('Ignore additional colors' 'ColorCode("Green Brown Orange")',,
      'ColorCode("Green Brown Orange")',, 'to be', 51)

check('Color codes -> Black and brown, one digit' 'ColorCode("Black Brown")',,
      'ColorCode("Black Brown")',, 'to be', 1)

