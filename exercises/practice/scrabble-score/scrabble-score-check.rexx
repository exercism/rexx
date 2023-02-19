/* Unit Test Runner: t-rexx */
function = 'Score'
context('Checking the' function 'function')

/* Unit tests */
check('lowercase letter' function||'("a")',,
      function||'("a")',, 'to be', 1)

check('uppercase letter' function||'("A")',,
      function||'("A")',, 'to be', 1)

check('valuable letter' function||'("f")',,
      function||'("f")',, 'to be', 4)

check('short word' function||'("at")',,
      function||'("at")',, 'to be', 2)

check('short, valuable word' function||'("zoo")',,
      function||'("zoo")',, 'to be', 12)

check('medium word' function||'("street")',,
      function||'("street")',, 'to be', 6)

check('medium, valuable word' function||'("quirky")',,
      function||'("quirky")',, 'to be', 22)

check('long, mixed-case word' function||'("OxyphenButazone")',,
      function||'("OxyphenButazone")',, 'to be', 41)

check('english-like word' function||'("pinata")',,
      function||'("pinata")',, 'to be', 8)

check('empty input' function||'("")',,
      function||'("")',, 'to be', 0)

check('entire alphabet available' function||'("abcdefghijklmnopqrstuvwxyz")',,
      function||'("abcdefghijklmnopqrstuvwxyz")',, 'to be', 87)

