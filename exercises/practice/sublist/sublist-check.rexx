/* Unit Test Runner: t-rexx */
function = 'ClassifyList'
context('Checking the' function 'function')

/* Unit tests */
check('empty lists' function||'("", "")',,
      function||'("", "")',, 'to be', 'EQUAL')

check('empty list within non empty list' function||'("", "1 2 3")',,
      function||'("", "1 2 3")',, 'to be', 'SUBLIST')

check('non empty list contains empty list' function||'("1 2 3", "")',,
      function||'("1 2 3", "")',, 'to be', 'SUPERLIST')

check('list EQUALs itself' function||'("1 2 3", "1 2 3")',,
      function||'("1 2 3", "1 2 3")',, 'to be', 'EQUAL')

check('different lists' function||'("1 2 3", "2 3 4")',,
      function||'("1 2 3", "2 3 4")',, 'to be', 'UNEQUAL')

check('false start' function||'("1 2 5", "0 1 2 3 1 2 5 6")',,
      function||'("1 2 5", "0 1 2 3 1 2 5 6")',, 'to be', 'SUBLIST')

check('consecutive' function||'("1 1 2", "0 1 1 1 2 1 2")',,
      function||'("1 1 2", "0 1 1 1 2 1 2")',, 'to be', 'SUBLIST')

check('SUBLIST at start' function||'("0 1 2", "0 1 2 3 4 5")',,
      function||'("0 1 2", "0 1 2 3 4 5")',, 'to be', 'SUBLIST')

check('SUBLIST in middle' function||'("2 3 4", "0 1 2 3 4 5")',,
      function||'("2 3 4", "0 1 2 3 4 5")',, 'to be', 'SUBLIST')

check('SUBLIST at end' function||'("3 4 5", "0 1 2 3 4 5")',,
      function||'("3 4 5", "0 1 2 3 4 5")',, 'to be', 'SUBLIST')

check('at start of SUPERLIST' function||'("0 1 2 3 4 5", "0 1 2")',,
      function||'("0 1 2 3 4 5", "0 1 2")',, 'to be', 'SUPERLIST')

check('in middle of SUPERLIST' function||'("0 1 2 3 4 5", "2 3")',,
      function||'("0 1 2 3 4 5", "2 3")',, 'to be', 'SUPERLIST')

check('at end of SUPERLIST' function||'("0 1 2 3 4 5", "3 4 5")',,
      function||'("0 1 2 3 4 5", "3 4 5")',, 'to be', 'SUPERLIST')

check('first list missing element from second list' function||'("1 3", "1 2 3")',,
      function||'("1 3", "1 2 3")',, 'to be', 'UNEQUAL')

check('second list missing element from first list' function||'("1 2 3", "1 3")',,
      function||'("1 2 3", "1 3")',, 'to be', 'UNEQUAL')

check('first list missing additional digits from second list' function||'("1 2", "1 22")',,
      function||'("1 2", "1 22")',, 'to be', 'UNEQUAL')

check('order matters to a list' function||'("1 2 3", "3 2 1")',,
      function||'("1 2 3", "3 2 1")',, 'to be', 'UNEQUAL')

check('same digits but different numbers' function||'("1 0 1", "10 1")',,
      function||'("1 0 1", "10 1")',, 'to be', 'UNEQUAL')

