/* Unit Test Runner: t-rexx */
context('Checking the Commands function')

/* Unit tests */
check('wink for 1' 'Commands(1)',,
      'Commands(1)',, '=', 'wink')

check('double blink for 10' 'Commands(2)',,
      'Commands(2)',, '=', 'double blink')

check('close your eyes for 100' 'Commands(4)',,
      'Commands(4)',, '=', 'close your eyes')

check('jump for 1000' 'Commands(8)',,
      'Commands(8)',, '=', 'jump')

check('combine two actions' 'Commands(3)',,
      'Commands(3)',, '=', 'wink;double blink')

check('reverse two actions' 'Commands(19)',,
      'Commands(19)',, '=', 'double blink;wink')

check('reversing one action gives the same action' 'Commands(24)',,
      'Commands(24)',, '=', 'jump')

check('reversing no actions still gives no actions' 'Commands(16)',,
      'Commands(16)',, '=', '')

check('all possible actions' 'Commands(15)',,
      'Commands(15)',, '=', 'wink;double blink;close your eyes;jump')

check('reverse all possible actions' 'Commands(31)',,
      'Commands(31)',, '=', 'jump;close your eyes;double blink;wink')

check('do nothing for zero' 'Commands(0)',,
      'Commands(0)',, '=', '')

