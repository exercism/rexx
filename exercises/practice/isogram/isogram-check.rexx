/* Unit Test Runner: t-rexx */
context('Checking the IsIsogram function')

/* Unit tests */
check('empty string' 'IsIsogram("")',,
      'IsIsogram("")',, '=', 1)

check('isogram with only lower case characters' 'IsIsogram("isogram")',,
      'IsIsogram("isogram")',, '=', 1)

check('word with one duplicated character' 'IsIsogram("eleven")',,
      'IsIsogram("eleven")',, '=', 0)

check('word with one duplicated character from the end of the alphabet' 'IsIsogram("zzyzx")',,
      'IsIsogram("zzyzx")',, '=', 0)

check('longest reported english isogram' 'IsIsogram("subdermatoglyphic")',,
      'IsIsogram("subdermatoglyphic")',, '=', 1)

check('word with duplicated character in mixed case' 'IsIsogram("Alphabet")',,
      'IsIsogram("Alphabet")',, '=', 0)

check('word with duplicated character in mixed case, lowercase first' 'IsIsogram("alphAbet")',,
      'IsIsogram("alphAbet")',, '=', 0)

check('hypothetical isogrammic word with hyphen' 'IsIsogram("thumbscrew-japingly")',,
      'IsIsogram("thumbscrew-japingly")',, '=', 1)

check('hypothetical word with duplicated character following hyphen' 'IsIsogram("thumbscrew-jappingly")',,
      'IsIsogram("thumbscrew-jappingly")',, '=', 0)

check('isogram with duplicated hyphen' 'IsIsogram("six-year-old")',,
      'IsIsogram("six-year-old")',, '=', 1)

check('made-up name that is an isogram' 'IsIsogram("Emily Jung Schwartzkopf")',,
      'IsIsogram("Emily Jung Schwartzkopf")',, '=', 1)

check('duplicated character in the middle' 'IsIsogram("accentor")',,
      'IsIsogram("accentor")',, '=', 0)

check('same first and last characters' 'IsIsogram("angola")',,
      'IsIsogram("angola")',, '=', 0)

check('word with duplicated character and with two hyphens' 'IsIsogram("nine-nine-four")',,
      'IsIsogram("nine-nine-four")',, '=', 0)

