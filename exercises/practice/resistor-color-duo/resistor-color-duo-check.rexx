/* Unit Test Runner: t-rexx */
function = 'ColorCode'
context('Checking the' function 'function')

/* Unit tests */
check('Color codes -> Brown and black' function||'("Brown Black")',,
      function||'("Brown Black")',, 'to be', 10)

check('Color codes -> Blue and grey' function||'("Blue Grey")',,
      function||'("Blue Grey")',, 'to be', 68)

check('Color codes -> Yellow and violet' function||'("Yellow Violet")',,
      function||'("Yellow Violet")',, 'to be', 47)

check('Color codes -> White and red' function||'("White Red")',,
      function||'("White Red")',, 'to be', 92)

check('Color codes -> Orange and orange' function||'("Orange Orange")',,
      function||'("Orange Orange")',, 'to be', 33)

check('Ignore additional colors' function||'("Green Brown Orange")',,
      function||'("Green Brown Orange")',, 'to be', 51)

check('Color codes -> Black and brown, one digit' function||'("Black Brown")',,
      function||'("Black Brown")',, 'to be', 1)

