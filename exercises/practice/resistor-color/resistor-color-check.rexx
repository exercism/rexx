/* Unit Test Runner: t-rexx */
context('Checking the ColorCode and Colors functions')

/* Unit tests */
function = 'ColorCode'
check('Color codes -> Black' function||'("Black")',,
      function||'("Black")',, 'to be', 0)

check('Color codes -> White' function||'("White")',,
      function||'("White")',, 'to be', 9)

check('Color codes -> Orange' function||'("Orange")',,
      function||'("Orange")',, 'to be', 3)

function = 'Colors'
COLORS = 'BLACK BROWN RED ORANGE YELLOW GREEN BLUE VIOLET GREY WHITE'
check('Colors' function||'()',,
      function||'()',, 'to be', COLORS)

