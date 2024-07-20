/* Unit Test Runner: t-rexx */
context('Checking the Convert function')

/* Unit tests */
check('rotate a by 0, same output as input' 'Convert("a", 0)',,
      'Convert("a", 0)',, '=', 'a')

check('rotate a by 1' 'Convert("a", 1)',,
      'Convert("a", 1)',, '=', 'b')

check('rotate a by 26, same output as input' 'Convert("a", 26)',,
      'Convert("a", 26)',, '=', 'a')

check('rotate m by 13' 'Convert("m", 13)',,
      'Convert("m", 13)',, '=', 'z')

check('rotate n by 13 with wrap around alphabet' 'Convert("n", 13)',,
      'Convert("n", 13)',, '=', 'a')

check('rotate capital letters' 'Convert("OMG", 5)',,
      'Convert("OMG", 5)',, '=', 'TRL')

check('rotate spaces' 'Convert("O M G", 5)',,
      'Convert("O M G", 5)',, '=', 'T R L')

check('rotate numbers' 'Convert("Testing 1 2 3 testing", 4)',,
      'Convert("Testing 1 2 3 testing", 4)',, '=', 'Xiwxmrk 1 2 3 xiwxmrk')

check('rotate punctuation' 'Convert("Let''s eat, Grandma!", 21)',,
      'Convert("Let''s eat, Grandma!", 21)',, '=', "Gzo'n zvo, Bmviyhv!")

check('rotate all letters' 'Convert("The quick brown fox jumps over the lazy dog.", 13)',,
      'Convert("The quick brown fox jumps over the lazy dog.", 13)',, '=', 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.')

