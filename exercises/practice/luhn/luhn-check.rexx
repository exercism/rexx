/* Unit Test Runner: t-rexx */
function = 'IsValid'
context('Checking the' function 'function')

/* Unit tests */
check('single digit strings can not be valid test' function||'("1")',,
      function||'("1")',, 'to be', 0)

check('a single zero is invalid test' function||'("0")',,
      function||'("0")',, 'to be', 0)

check('a simple valid sin that remains valid if reversed test' function||'("059")',,
      function||'("059")',, 'to be', 1)

check('a simple valid sin that becomes invalid if reversed test' function||'("59")',,
      function||'("59")',, 'to be', 1)

check('a valid canadian sin test' function||'("055 444 285")',,
      function||'("055 444 285")',, 'to be', 1)

check('invalid canadian sin test' function||'("055 444 286")',,
      function||'("055 444 286")',, 'to be', 0)

check('invalid credit card test' function||'("8273 1232 7352 0569")',,
      function||'("8273 1232 7352 0569")',, 'to be', 0)

check('valid number with an even number of digits test' function||'("095 245 88")',,
      function||'("095 245 88")',, 'to be', 1)

check('valid strings with a non digit included become invalid test' function||'("055a 444 285")',,
      function||'("055a 444 285")',, 'to be', 0)

check('valid strings with punctuation included become invalid test' function||'("055-444-285")',,
      function||'("055-444-285")',, 'to be', 0)

check('valid strings with symbols included become invalid test' function||'("055 444$ 285")',,
      function||'("055 444$ 285")',, 'to be', 0)

check('single zero with space is invalid test' function||'(" 0")',,
      function||'(" 0")',, 'to be', 0)

check('more than a single zero is valid test' function||'("0000 0")',,
      function||'("0000 0")',, 'to be', 1)

check('input digit 9 is correctly converted to output digit 9 test' function||'("091")',,
      function||'("091")',, 'to be', 1)

check('very long input is valid test' function||'("9999999999 9999999999 9999999999 9999999999")',,
      function||'("9999999999 9999999999 9999999999 9999999999")',, 'to be', 1)

check('valid luhn with an odd number of digits and non zero first digit test' function||'("109")',,
      function||'("109")',, 'to be', 1)

check('strings with non digits is invalid test' function||'(":9")',,
      function||'(":9")',, 'to be', 0)

