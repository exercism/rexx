/* Unit Test Runner: t-rexx */
function = 'ColorCode'
context('Checking the ColorCode function')

/* Test Options */
numeric digits 20

/* Unit tests */
check("Orange and orange and black" 'ColorCode("Orange Orange Black")',,
      'ColorCode("Orange Orange Black")',, '=', '33 ohms')

check("Blue and grey and brown" 'ColorCode("Blue Grey Brown")',,
      'ColorCode("Blue Grey Brown")',, '=', '680 ohms')

    check("Brown and red and red" 'ColorCode("Brown Red Red")',,
          'ColorCode("Brown Red Red")',, '=', '1200 ohms')

check("Red and black and red" 'ColorCode("Red Black Red")',,
      'ColorCode("Red Black Red")',, '=', '2 kiloohms')

check("Green and brown and orange" 'ColorCode("Green Brown Orange")',,
      'ColorCode("Green Brown Orange")',, '=', '51 kiloohms')

check("Yellow and violet and yellow" 'ColorCode("Yellow Violet Yellow")',,
      'ColorCode("Yellow Violet Yellow")',, '=', '470 kiloohms')

check("Blue and violet and blue" 'ColorCode("Blue Violet Grey")',,
      'ColorCode("Blue Violet Grey")',, '=', '6700 megaohms')

    check("Invalid first color" 'ColorCode("foo White White")',,
          'ColorCode("foo White White")',, '=', '')

    check("Invalid second color" 'ColorCode("White bar White")',,
          'ColorCode("White bar White")',, '=', '')

    check("Invalid third color" 'ColorCode("White White baz")',,
          'ColorCode("White White baz")',, '=', '')

check("Minimum possible value" 'ColorCode("Black Black Black")',,
      'ColorCode("Black Black Black")',, '=', '0 ohms')

check("Maximum possible value" 'ColorCode("White White White")',,
      'ColorCode("White White White")',, '=', '99 gigaohms')

check("First two colors make an invalid octal number" 'ColorCode("Black Grey Black")',,
      'ColorCode("Black Grey Black")',, '=', '8 ohms')

check("Ignore extra colors" 'ColorCode("Blue Green Yellow Orange")',,
      'ColorCode("Blue Green Yellow Orange")',, '=', '650 kiloohms')

