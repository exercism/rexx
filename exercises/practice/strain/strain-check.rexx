/* Unit Test Runner: t-rexx */
context('Checking the Keep and Discard functions')

/* Unit tests */
check('empty keep test' 'Keep("", "LessThan10")',,
      'Keep("", "LessThan10")',, '=', '')

check('keep everything test' 'Keep("1 2 3", "LessThan10")',,
      'Keep("1 2 3", "LessThan10")',, '=', '1 2 3')

check('keep first last test' 'Keep("1 2 3", "IsOdd")',,
      'Keep("1 2 3", "IsOdd")',, '=', '1 3')

check('keep nothin test' 'Keep("1 3 5 7", "IsEven")',,
      'Keep("1 3 5 7", "IsEven")',, '=', '')

check('keep neither first nor last test' 'Keep("1 2 3", "IsEven")',,
      'Keep("1 2 3", "IsEven")',, '=', '2')

check('keep strings test' 'Keep("apple zebra banana zombies cheri zealot", "StartsWithZ")',,
      'Keep("apple zebra banana zombies cheri zealot", "StartsWithZ")',, '=', 'zebra zombies zealot')

check('empty discard test' 'Discard("", "LessThan10")',,
      'Discard("", "LessThan10")',, '=', '')

check('discard everything test' 'Discard("1 2 3", "LessThan10")',,
      'Discard("1 2 3", "LessThan10")',, '=', '')

check('discard first and last test' 'Discard("1 2 3", "IsOdd")',,
      'Discard("1 2 3", "IsOdd")',, '=', '2')

check('discard nothing test' 'Discard("1 3 5 7", "IsEven")',,
      'Discard("1 3 5 7", "IsEven")',, '=', '1 3 5 7')

check('discard neither first nor last test' 'Discard("1 2 3", "IsEven")',,
      'Discard("1 2 3", "IsEven")',, '=', '1 3')

check('discard strings test' 'Discard("apple zebra banana zombies cheri zealot", "StartsWithZ")',,
      'Discard("apple zebra banana zombies cheri zealot", "StartsWithZ")',, '=', 'apple banana cheri')

