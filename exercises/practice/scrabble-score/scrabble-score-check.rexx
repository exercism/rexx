/* Unit Test Runner: t-rexx */
context('Checking the Score function')

/* Unit tests */
check('lowercase letter' 'Score("a")',,
      'Score("a")',, '=', 1)

check('uppercase letter' 'Score("A")',,
      'Score("A")',, '=', 1)

check('valuable letter' 'Score("f")',,
      'Score("f")',, '=', 4)

check('short word' 'Score("at")',,
      'Score("at")',, '=', 2)

check('short, valuable word' 'Score("zoo")',,
      'Score("zoo")',, '=', 12)

check('medium word' 'Score("street")',,
      'Score("street")',, '=', 6)

check('medium, valuable word' 'Score("quirky")',,
      'Score("quirky")',, '=', 22)

check('long, mixed-case word' 'Score("OxyphenButazone")',,
      'Score("OxyphenButazone")',, '=', 41)

check('english-like word' 'Score("pinata")',,
      'Score("pinata")',, '=', 8)

check('empty input' 'Score("")',,
      'Score("")',, '=', 0)

check('entire alphabet available' 'Score("abcdefghijklmnopqrstuvwxyz")',,
      'Score("abcdefghijklmnopqrstuvwxyz")',, '=', 87)

