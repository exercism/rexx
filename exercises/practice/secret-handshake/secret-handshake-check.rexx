/* Unit Test Runner: t-rexx */
function = 'Commands'
context('Checking the' function 'function')

/* Unit tests */
check('wink for 1' function||'(1)',,
      function||'(1)',, 'to be', 'wink')

check('double blink for 10' function||'(2)',,
      function||'(2)',, 'to be', 'double blink')

check('close your eyes for 100' function||'(4)',,
      function||'(4)',, 'to be', 'close your eyes')

check('jump for 1000' function||'(8)',,
      function||'(8)',, 'to be', 'jump')

check('combine two actions' function||'(3)',,
      function||'(3)',, 'to be', 'wink;double blink')

check('reverse two actions' function||'(19)',,
      function||'(19)',, 'to be', 'double blink;wink')

check('reversing one action gives the same action' function||'(24)',,
      function||'(24)',, 'to be', 'jump')

check('reversing no actions still gives no actions' function||'(16)',,
      function||'(16)',, 'to be', '')

check('all possible actions' function||'(15)',,
      function||'(15)',, 'to be', 'wink;double blink;close your eyes;jump')

check('reverse all possible actions' function||'(31)',,
      function||'(31)',, 'to be', 'jump;close your eyes;double blink;wink')

check('do nothing for zero' function||'(0)',,
      function||'(0)',, 'to be', '')

