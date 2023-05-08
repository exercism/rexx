/* Unit Test Runner: t-rexx */
context('Checking the Score function')

/* Unit tests */
check('lowercase letter' 'Score("a")',,
      'Score("a")',, 'to be', 1)

check('uppercase letter' 'Score("A")',,
      'Score("A")',, 'to be', 1)

check('valuable letter' 'Score("f")',,
      'Score("f")',, 'to be', 4)

check('short word' 'Score("at")',,
      'Score("at")',, 'to be', 2)

check('short, valuable word' 'Score("zoo")',,
      'Score("zoo")',, 'to be', 12)

check('medium word' 'Score("street")',,
      'Score("street")',, 'to be', 6)

check('medium, valuable word' 'Score("quirky")',,
      'Score("quirky")',, 'to be', 22)

check('long, mixed-case word' 'Score("OxyphenButazone")',,
      'Score("OxyphenButazone")',, 'to be', 41)

check('english-like word' 'Score("pinata")',,
      'Score("pinata")',, 'to be', 8)

check('empty input' 'Score("")',,
      'Score("")',, 'to be', 0)

check('entire alphabet available' 'Score("abcdefghijklmnopqrstuvwxyz")',,
      'Score("abcdefghijklmnopqrstuvwxyz")',, 'to be', 87)

