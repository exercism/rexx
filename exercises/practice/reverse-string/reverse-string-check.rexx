/* Unit Test Runner: t-rexx */
function = 'ReverseString'
context('Checking the' function 'function')

/* Unit tests */
check('an empty string' function||'("")',,
      function||'("")',, 'to be', "")

check('an word' function||'("robot")',,
      function||'("robot")',, 'to be', "tobor")

check('an capitalized word' function||'("Ramen")',,
      function||'("Ramen")',, 'to be', "nemaR")

check('a sentence with punctuation' function||'("I''m Hungry")',,
      function||'("I''m Hungry!")',, 'to be', "!yrgnuH m'I")

check('a palindrome' function||'("racecar")',,
      function||'("racecar")',, 'to be', "racecar")

check('an even-sized word' function||'("drawer")',,
      function||'("drawer")',, 'to be', "reward")

