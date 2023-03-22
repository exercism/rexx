/* Unit Test Runner: t-rexx */
function = 'Clean'
context('Checking the' function 'function')

/* Unit tests */
check('cleans the number' function||'("(223) 456-7890")',,
      function||'("(223) 456-7890")',, 'to be', '2234567890')

check('cleans numbers with dots' function||'("223.456.7890")',,
      function||'("223.456.7890")',, 'to be', '2234567890')

check('cleans numbers with multiple spaces' function||'("223 456   7890   ")',,
      function||'("223 456   7890   ")',, 'to be', '2234567890')

check('invalid when 9 digits' function||'("123456789")',,
      function||'("123456789")',, 'to be', '')

check('invalid when 11 digits does not start with a 1' function||'("22234567890")',,
      function||'("22234567890")',, 'to be', '')

check('valid when 11 digits and starting with 1' function||'("12234567890")',,
      function||'("12234567890")',, 'to be', '2234567890')

check('valid when 11 digits and starting with 1 even with punctuation' function||'("+1 (223) 456-7890")',,
      function||'("+1 (223) 456-7890")',, 'to be', '2234567890')

check('invalid when more than 11 digits' function||'("321234567890")',,
      function||'("321234567890")',, 'to be', '')

check('invalid with letters' function||'("123-abc-7890")',,
      function||'("123-abc-7890")',, 'to be', '')

check('invalid with punctuations' function||'("123-@:!-7890")',,
      function||'("123-@:!-7890")',, 'to be', '')

check('invalid if area code does not start with 2-9' function||'("(123) 456-7890")',,
      function||'("(123) 456-7890")',, 'to be', '')

check('invalid if exchange code does not start with 2-9' function||'("(223) 056-7890")',,
      function||'("(223) 056-7890")',, 'to be', '')

