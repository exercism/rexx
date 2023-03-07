/* Unit Test Runner: t-rexx */
context('Checking the Keep and Discard functions')

/* Unit tests */
function = 'Keep'
check('empty keep test' function||'("", "LessThan10")',,
      function||'("", "LessThan10")',, 'to be', '')

check('keep everything test' function||'("1 2 3", "LessThan10")',,
      function||'("1 2 3", "LessThan10")',, 'to be', '1 2 3')

check('keep first last test' function||'("1 2 3", "IsOdd")',,
      function||'("1 2 3", "IsOdd")',, 'to be', '1 3')

check('keep nothin test' function||'("1 3 5 7", "IsEven")',,
      function||'("1 3 5 7", "IsEven")',, 'to be', '')

check('keep neither first nor last test' function||'("1 2 3", "IsEven")',,
      function||'("1 2 3", "IsEven")',, 'to be', '2')

check('keep strings test' function||'("apple zebra banana zombies cheri zealot", "StartsWithZ")',,
      function||'("apple zebra banana zombies cheri zealot", "StartsWithZ")',, 'to be', 'zebra zombies zealot')

function = 'Discard'
check('empty discard test' function||'("", "LessThan10")',,
      function||'("", "LessThan10")',, 'to be', '')

check('discard everything test' function||'("1 2 3", "LessThan10")',,
      function||'("1 2 3", "LessThan10")',, 'to be', '')

check('discard first and last test' function||'("1 2 3", "IsOdd")',,
      function||'("1 2 3", "IsOdd")',, 'to be', '2')

check('discard nothing test' function||'("1 3 5 7", "IsEven")',,
      function||'("1 3 5 7", "IsEven")',, 'to be', '1 3 5 7')

check('discard neither first nor last test' function||'("1 2 3", "IsEven")',,
      function||'("1 2 3", "IsEven")',, 'to be', '1 3')

check('discard strings test' function||'("apple zebra banana zombies cheri zealot", "StartsWithZ")',,
      function||'("apple zebra banana zombies cheri zealot", "StartsWithZ")',, 'to be', 'apple banana cheri')

