/* Unit Test Runner: t-rexx */
context('Checking the ClassifyList function')

/* Unit tests */
check('empty lists' 'ClassifyList("", "")',,
      'ClassifyList("", "")',, 'to be', 'EQUAL')

check('empty list within non empty list' 'ClassifyList("", "1 2 3")',,
      'ClassifyList("", "1 2 3")',, 'to be', 'SUBLIST')

check('non empty list contains empty list' 'ClassifyList("1 2 3", "")',,
      'ClassifyList("1 2 3", "")',, 'to be', 'SUPERLIST')

check('list EQUALs itself' 'ClassifyList("1 2 3", "1 2 3")',,
      'ClassifyList("1 2 3", "1 2 3")',, 'to be', 'EQUAL')

check('different lists' 'ClassifyList("1 2 3", "2 3 4")',,
      'ClassifyList("1 2 3", "2 3 4")',, 'to be', 'UNEQUAL')

check('false start' 'ClassifyList("1 2 5", "0 1 2 3 1 2 5 6")',,
      'ClassifyList("1 2 5", "0 1 2 3 1 2 5 6")',, 'to be', 'SUBLIST')

check('consecutive' 'ClassifyList("1 1 2", "0 1 1 1 2 1 2")',,
      'ClassifyList("1 1 2", "0 1 1 1 2 1 2")',, 'to be', 'SUBLIST')

check('SUBLIST at start' 'ClassifyList("0 1 2", "0 1 2 3 4 5")',,
      'ClassifyList("0 1 2", "0 1 2 3 4 5")',, 'to be', 'SUBLIST')

check('SUBLIST in middle' 'ClassifyList("2 3 4", "0 1 2 3 4 5")',,
      'ClassifyList("2 3 4", "0 1 2 3 4 5")',, 'to be', 'SUBLIST')

check('SUBLIST at end' 'ClassifyList("3 4 5", "0 1 2 3 4 5")',,
      'ClassifyList("3 4 5", "0 1 2 3 4 5")',, 'to be', 'SUBLIST')

check('at start of SUPERLIST' 'ClassifyList("0 1 2 3 4 5", "0 1 2")',,
      'ClassifyList("0 1 2 3 4 5", "0 1 2")',, 'to be', 'SUPERLIST')

check('in middle of SUPERLIST' 'ClassifyList("0 1 2 3 4 5", "2 3")',,
      'ClassifyList("0 1 2 3 4 5", "2 3")',, 'to be', 'SUPERLIST')

check('at end of SUPERLIST' 'ClassifyList("0 1 2 3 4 5", "3 4 5")',,
      'ClassifyList("0 1 2 3 4 5", "3 4 5")',, 'to be', 'SUPERLIST')

check('first list missing element from second list' 'ClassifyList("1 3", "1 2 3")',,
      'ClassifyList("1 3", "1 2 3")',, 'to be', 'UNEQUAL')

check('second list missing element from first list' 'ClassifyList("1 2 3", "1 3")',,
      'ClassifyList("1 2 3", "1 3")',, 'to be', 'UNEQUAL')

check('first list missing additional digits from second list' 'ClassifyList("1 2", "1 22")',,
      'ClassifyList("1 2", "1 22")',, 'to be', 'UNEQUAL')

check('order matters to a list' 'ClassifyList("1 2 3", "3 2 1")',,
      'ClassifyList("1 2 3", "3 2 1")',, 'to be', 'UNEQUAL')

check('same digits but different numbers' 'ClassifyList("1 0 1", "10 1")',,
      'ClassifyList("1 0 1", "10 1")',, 'to be', 'UNEQUAL')

