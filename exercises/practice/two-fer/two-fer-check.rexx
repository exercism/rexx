/* Unit Test Runner: t-rexx */
context('Checking the TwoFer function')

/* Unit tests */
check('no name given' 'TwoFer()',,
      'TwoFer()',, 'to be', 'One for you, one for me.')

check('a name given' 'TwoFer("Brad")',,
      'TwoFer("Brad")',, 'to be', 'One for Brad, one for me.')

check('another name given' 'TwoFer("Janet")',,
      'TwoFer("Janet")',, 'to be', 'One for Janet, one for me.')

