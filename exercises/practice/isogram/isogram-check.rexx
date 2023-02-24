/* Unit Test Runner: t-rexx */
function = 'IsIsogram'
context('Checking the' function 'function')

/* Unit tests */
check('empty string' function||'("")',,
      function||'("")',, 'to be', 1)

check('isogram with only lower case characters' function||'("isogram")',,
      function||'("isogram")',, 'to be', 1)

check('word with one duplicated character' function||'("eleven")',,
      function||'("eleven")',, 'to be', 0)

check('word with one duplicated character from the end of the alphabet' function||'("zzyzx")',,
      function||'("zzyzx")',, 'to be', 0)

check('longest reported english isogram' function||'("subdermatoglyphic")',,
      function||'("subdermatoglyphic")',, 'to be', 1)

check('word with duplicated character in mixed case' function||'("Alphabet")',,
      function||'("Alphabet")',, 'to be', 0)

check('word with duplicated character in mixed case, lowercase first' function||'("alphAbet")',,
      function||'("alphAbet")',, 'to be', 0)

check('hypothetical isogrammic word with hyphen' function||'("thumbscrew-japingly")',,
      function||'("thumbscrew-japingly")',, 'to be', 1)

check('hypothetical word with duplicated character following hyphen' function||'("thumbscrew-jappingly")',,
      function||'("thumbscrew-jappingly")',, 'to be', 0)

check('isogram with duplicated hyphen' function||'("six-year-old")',,
      function||'("six-year-old")',, 'to be', 1)

check('made-up name that is an isogram' function||'("Emily Jung Schwartzkopf")',,
      function||'("Emily Jung Schwartzkopf")',, 'to be', 1)

check('duplicated character in the middle' function||'("accentor")',,
      function||'("accentor")',, 'to be', 0)

check('same first and last characters' function||'("angola")',,
      function||'("angola")',, 'to be', 0)

check('word with duplicated character and with two hyphens' function||'("nine-nine-four")',,
      function||'("nine-nine-four")',, 'to be', 0)

