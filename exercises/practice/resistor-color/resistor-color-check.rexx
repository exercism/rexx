/* Unit Test Runner: t-rexx */
context('Checking the ColorCode and Colors functions')

/* Unit tests */
check('Color codes -> Black' 'ColorCode("Black")',,
      'ColorCode("Black")',, 'to be', 0)

check('Color codes -> White' 'ColorCode("White")',,
      'ColorCode("White")',, 'to be', 9)

check('Color codes -> Orange' 'ColorCode("Orange")',,
      'ColorCode("Orange")',, 'to be', 3)

COLORS = 'BLACK BROWN RED ORANGE YELLOW GREEN BLUE VIOLET GREY WHITE'
check('Colors' 'Colors()',,
      'Colors()',, 'to be', COLORS)

