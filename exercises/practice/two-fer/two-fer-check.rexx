/* Unit Test Runner: t-rexx */
function = 'TwoFer'
context('Checking the' function 'function')

/* Unit tests */
check('no name given' function||'()',,
      function||'()',, 'to be', 'One for you, one for me.')

check('a name given' function||'("Brad")',,
      function||'("Brad")',, 'to be', 'One for Brad, one for me.')

check('another name given' function||'("Janet")',,
      function||'("Janet")',, 'to be', 'One for Janet, one for me.')

