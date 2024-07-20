/* Unit Test Runner: t-rexx */
context('Checking the ReverseString function')

/* Unit tests */
check('an empty string' 'ReverseString("")',,
      'ReverseString("")',, '=', "")

check('an word' 'ReverseString("robot")',,
      'ReverseString("robot")',, '=', "tobor")

check('an capitalized word' 'ReverseString("Ramen")',,
      'ReverseString("Ramen")',, '=', "nemaR")

check('a sentence with punctuation' 'ReverseString("I''m Hungry")',,
      'ReverseString("I''m Hungry!")',, '=', "!yrgnuH m'I")

check('a palindrome' 'ReverseString("racecar")',,
      'ReverseString("racecar")',, '=', "racecar")

check('an even-sized word' 'ReverseString("drawer")',,
      'ReverseString("drawer")',, '=', "reward")

