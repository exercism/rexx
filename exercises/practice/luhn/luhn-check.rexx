/* Unit Test Runner: t-rexx */
context('Checking the IsValid  function')

/* Unit tests */
check('single digit strings can not be valid test' 'IsValid("1")',,
      'IsValid("1")',, '=', 0)

check('a single zero is invalid test' 'IsValid("0")',,
      'IsValid("0")',, '=', 0)

check('a simple valid sin that remains valid if reversed test' 'IsValid("059")',,
      'IsValid("059")',, '=', 1)

check('a simple valid sin that becomes invalid if reversed test' 'IsValid("59")',,
      'IsValid("59")',, '=', 1)

check('a valid canadian sin test' 'IsValid("055 444 285")',,
      'IsValid("055 444 285")',, '=', 1)

check('invalid canadian sin test' 'IsValid("055 444 286")',,
      'IsValid("055 444 286")',, '=', 0)

check('invalid credit card test' 'IsValid("8273 1232 7352 0569")',,
      'IsValid("8273 1232 7352 0569")',, '=', 0)

check('valid number with an even number of digits test' 'IsValid("095 245 88")',,
      'IsValid("095 245 88")',, '=', 1)

check('valid strings with a non digit included become invalid test' 'IsValid("055a 444 285")',,
      'IsValid("055a 444 285")',, '=', 0)

check('valid strings with punctuation included become invalid test' 'IsValid("055-444-285")',,
      'IsValid("055-444-285")',, '=', 0)

check('valid strings with symbols included become invalid test' 'IsValid("055 444$ 285")',,
      'IsValid("055 444$ 285")',, '=', 0)

check('single zero with space is invalid test' 'IsValid(" 0")',,
      'IsValid(" 0")',, '=', 0)

check('more than a single zero is valid test' 'IsValid("0000 0")',,
      'IsValid("0000 0")',, '=', 1)

check('input digit 9 is correctly converted to output digit 9 test' 'IsValid("091")',,
      'IsValid("091")',, '=', 1)

check('very long input is valid test' 'IsValid("9999999999 9999999999 9999999999 9999999999")',,
      'IsValid("9999999999 9999999999 9999999999 9999999999")',, '=', 1)

check('valid luhn with an odd number of digits and non zero first digit test' 'IsValid("109")',,
      'IsValid("109")',, '=', 1)

check('strings with non digits is invalid test' 'IsValid(":9")',,
      'IsValid(":9")',, '=', 0)

