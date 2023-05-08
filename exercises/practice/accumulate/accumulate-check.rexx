/* Unit Test Runner: t-rexx */
context('Checking the Accumulate function')

/* Unit tests */
check('accumulate empty test' 'Accumulate("", "Dummy")',,
      'Accumulate("", "Dummy")',, 'to be', '')

check('accumulate squares test' 'Accumulate("1 2 3", "Square")',,
      'Accumulate("1 2 3", "Square")',, 'to be', '1 4 9')

check('accumulate upcases test' 'Accumulate("hello world", "ToUpperCase")',,
      'Accumulate("hello world", "ToUpperCase")',, 'to be', 'HELLO WORLD')

check('accumulate reversed strings test' 'Accumulate("the quick brown fox etc", "ReverseToken")',,
      'Accumulate("the quick brown fox etc", "ReverseToken")',, 'to be', 'eht kciuq nworb xof cte')

check('accumulate recursively test' 'Accumulate("1 2 3 4 5", "GenSeq")',,
      'Accumulate("1 2 3 4 5", "GenSeq")',, 'to be', '1 1 2 1 2 3 1 2 3 4 1 2 3 4 5')

