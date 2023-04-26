/* Unit Test Runner: t-rexx */
context('Checking the Commands function')

/* Unit tests */
check('wink for 1' 'Commands(1)',,
      'Commands(1)',, 'to be', 'wink')

check('double blink for 10' 'Commands(2)',,
      'Commands(2)',, 'to be', 'double blink')

check('close your eyes for 100' 'Commands(4)',,
      'Commands(4)',, 'to be', 'close your eyes')

check('jump for 1000' 'Commands(8)',,
      'Commands(8)',, 'to be', 'jump')

check('combine two actions' 'Commands(3)',,
      'Commands(3)',, 'to be', 'wink;double blink')

check('reverse two actions' 'Commands(19)',,
      'Commands(19)',, 'to be', 'double blink;wink')

check('reversing one action gives the same action' 'Commands(24)',,
      'Commands(24)',, 'to be', 'jump')

check('reversing no actions still gives no actions' 'Commands(16)',,
      'Commands(16)',, 'to be', '')

check('all possible actions' 'Commands(15)',,
      'Commands(15)',, 'to be', 'wink;double blink;close your eyes;jump')

check('reverse all possible actions' 'Commands(31)',,
      'Commands(31)',, 'to be', 'jump;close your eyes;double blink;wink')

check('do nothing for zero' 'Commands(0)',,
      'Commands(0)',, 'to be', '')

