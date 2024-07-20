/* Unit Test Runner: t-rexx */
context('Checking the Clean function')

/* Unit tests */
check('cleans the number' 'Clean("(223) 456-7890")',,
      'Clean("(223) 456-7890")',, '=', '2234567890')

check('cleans numbers with dots' 'Clean("223.456.7890")',,
      'Clean("223.456.7890")',, '=', '2234567890')

check('cleans numbers with multiple spaces' 'Clean("223 456        7890   ")',,
      'Clean("223 456        7890   ")',, '=', '2234567890')

check('invalid when 9 digits' 'Clean("123456789")',,
      'Clean("123456789")',, '=', '')

check('invalid when 11 digits does not start with a 1' 'Clean("22234567890")',,
      'Clean("22234567890")',, '=', '')

check('valid when 11 digits and starting with 1' 'Clean("12234567890")',,
      'Clean("12234567890")',, '=', '2234567890')

check('valid when 11 digits and starting with 1 even with punctuation' 'Clean("+1 (223) 456-7890")',,
      'Clean("+1 (223) 456-7890")',, '=', '2234567890')

check('invalid when more than 11 digits' 'Clean("321234567890")',,
      'Clean("321234567890")',, '=', '')

check('invalid with letters' 'Clean("123-abc-7890")',,
      'Clean("123-abc-7890")',, '=', '')

check('invalid with punctuations' 'Clean("123-@:!-7890")',,
      'Clean("123-@:!-7890")',, '=', '')

check('invalid if area code does not start with 2-9' 'Clean("(123) 456-7890")',,
      'Clean("(123) 456-7890")',, '=', '')

check('invalid if exchange code does not start with 2-9' 'Clean("(223) 056-7890")',,
      'Clean("(223) 056-7890")',, '=', '')

