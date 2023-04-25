/* Unit Test Runner: t-rexx */
context('Checking the ReverseString function')

/* Unit tests */
check('an empty string' 'ReverseString("")',,
      'ReverseString("")',, 'to be', "")

check('an word' 'ReverseString("robot")',,
      'ReverseString("robot")',, 'to be', "tobor")

check('an capitalized word' 'ReverseString("Ramen")',,
      'ReverseString("Ramen")',, 'to be', "nemaR")

check('a sentence with punctuation' 'ReverseString("I''m Hungry")',,
      'ReverseString("I''m Hungry!")',, 'to be', "!yrgnuH m'I")

check('a palindrome' 'ReverseString("racecar")',,
      'ReverseString("racecar")',, 'to be', "racecar")

check('an even-sized word' 'ReverseString("drawer")',,
      'ReverseString("drawer")',, 'to be', "reward")

