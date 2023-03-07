/* Unit Test Runner: t-rexx */
function = 'Accumulate'
context('Checking the' function 'function')

/* Unit tests */
check('accumulate empty test' function||'("", "Dummy")',,
      function||'("", "Dummy")',, 'to be', '')

check('accumulate squares test' function||'("1 2 3", "Square")',,
      function||'("1 2 3", "Square")',, 'to be', '1 4 9')

check('accumulate upcases test' function||'("hello world", "ToUpperCase")',,
      function||'("hello world", "ToUpperCase")',, 'to be', 'HELLO WORLD')

check('accumulate reversed strings test' function||'("the quick brown fox etc", "ReverseToken")',,
      function||'("the quick brown fox etc", "ReverseToken")',, 'to be', 'eht kciuq nworb xof cte')

check('accumulate recursively test' function||'("1 2 3 4 5", "GenSeq")',,
      function||'("1 2 3 4 5", "GenSeq")',, 'to be', '1 1 2 1 2 3 1 2 3 4 1 2 3 4 5')

