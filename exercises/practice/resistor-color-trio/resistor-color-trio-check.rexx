/* Unit Test Runner: t-rexx */
function = 'ColorCode'
context('Checking the' function 'function')

/* Test Options */
numeric digits 20

/* Unit tests */
check("Orange and orange and black" function||'("Orange Orange Black")',,
      function||'("Orange Orange Black")',, 'to be', '33 ohms')

check("Blue and grey and brown" function||'("Blue Grey Brown")',,
      function||'("Blue Grey Brown")',, 'to be', '680 ohms')

    check("Brown and red and red" function||'("Brown Red Red")',,
          function||'("Brown Red Red")',, 'to be', '1200 ohms')

check("Red and black and red" function||'("Red Black Red")',,
      function||'("Red Black Red")',, 'to be', '2 kiloohms')

check("Green and brown and orange" function||'("Green Brown Orange")',,
      function||'("Green Brown Orange")',, 'to be', '51 kiloohms')

check("Yellow and violet and yellow" function||'("Yellow Violet Yellow")',,
      function||'("Yellow Violet Yellow")',, 'to be', '470 kiloohms')

check("Blue and violet and blue" function||'("Blue Violet Grey")',,
      function||'("Blue Violet Grey")',, 'to be', '6700 megaohms')

    check("Invalid first color" function||'("foo White White")',,
          function||'("foo White White")',, 'to be', '')

    check("Invalid second color" function||'("White bar White")',,
          function||'("White bar White")',, 'to be', '')

    check("Invalid third color" function||'("White White baz")',,
          function||'("White White baz")',, 'to be', '')

check("Minimum possible value" function||'("Black Black Black")',,
      function||'("Black Black Black")',, 'to be', '0 ohms')

check("Maximum possible value" function||'("White White White")',,
      function||'("White White White")',, 'to be', '99 gigaohms')

check("First two colors make an invalid octal number" function||'("Black Grey Black")',,
      function||'("Black Grey Black")',, 'to be', '8 ohms')

check("Ignore extra colors" function||'("Blue Green Yellow Orange")',,
      function||'("Blue Green Yellow Orange")',, 'to be', '650 kiloohms')

