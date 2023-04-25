/* Unit Test Runner: t-rexx */
function = 'ColorCode'
context('Checking the ColorCode function')

/* Test Options */
numeric digits 20

/* Unit tests */
check("Orange and orange and black" 'ColorCode("Orange Orange Black")',,
      'ColorCode("Orange Orange Black")',, 'to be', '33 ohms')

check("Blue and grey and brown" 'ColorCode("Blue Grey Brown")',,
      'ColorCode("Blue Grey Brown")',, 'to be', '680 ohms')

    check("Brown and red and red" 'ColorCode("Brown Red Red")',,
          'ColorCode("Brown Red Red")',, 'to be', '1200 ohms')

check("Red and black and red" 'ColorCode("Red Black Red")',,
      'ColorCode("Red Black Red")',, 'to be', '2 kiloohms')

check("Green and brown and orange" 'ColorCode("Green Brown Orange")',,
      'ColorCode("Green Brown Orange")',, 'to be', '51 kiloohms')

check("Yellow and violet and yellow" 'ColorCode("Yellow Violet Yellow")',,
      'ColorCode("Yellow Violet Yellow")',, 'to be', '470 kiloohms')

check("Blue and violet and blue" 'ColorCode("Blue Violet Grey")',,
      'ColorCode("Blue Violet Grey")',, 'to be', '6700 megaohms')

    check("Invalid first color" 'ColorCode("foo White White")',,
          'ColorCode("foo White White")',, 'to be', '')

    check("Invalid second color" 'ColorCode("White bar White")',,
          'ColorCode("White bar White")',, 'to be', '')

    check("Invalid third color" 'ColorCode("White White baz")',,
          'ColorCode("White White baz")',, 'to be', '')

check("Minimum possible value" 'ColorCode("Black Black Black")',,
      'ColorCode("Black Black Black")',, 'to be', '0 ohms')

check("Maximum possible value" 'ColorCode("White White White")',,
      'ColorCode("White White White")',, 'to be', '99 gigaohms')

check("First two colors make an invalid octal number" 'ColorCode("Black Grey Black")',,
      'ColorCode("Black Grey Black")',, 'to be', '8 ohms')

check("Ignore extra colors" 'ColorCode("Blue Green Yellow Orange")',,
      'ColorCode("Blue Green Yellow Orange")',, 'to be', '650 kiloohms')

