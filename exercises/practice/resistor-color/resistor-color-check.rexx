/* Unit Test Runner: t-rexx */
context('Checking the ColorCode and Colors functions')

/* Unit tests */
check('Color codes -> Black' 'ColorCode("Black")',,
      'ColorCode("Black")',, '=', 0)

check('Color codes -> White' 'ColorCode("White")',,
      'ColorCode("White")',, '=', 9)

check('Color codes -> Orange' 'ColorCode("Orange")',,
      'ColorCode("Orange")',, '=', 3)

COLORS = 'BLACK BROWN RED ORANGE YELLOW GREEN BLUE VIOLET GREY WHITE'
check('Colors' 'Colors()',,
      'Colors()',, '=', COLORS)

