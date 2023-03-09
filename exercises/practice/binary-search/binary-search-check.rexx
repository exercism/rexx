/* Unit Test Runner: t-rexx */
function = 'BinarySearch'
context('Checking the' function 'function')

/* Unit tests */
check('finds a value in an array with one element' function||'("10", "10")',,
      function||'("10", "10")',, 'to be', 1)

check('finds a value in the middle of an array' function||'("6", "1 2 3 4 5 6 7 8 9 10 11")',,
      function||'("6", "1 2 3 4 5 6 7 8 9 10 11")',, 'to be', 6)

check('finds a value at the beginning of an array' function||'("1", "1 2 3 4 5 6 7 8 9 10 11")',,
      function||'("1", "1 2 3 4 5 6 7 8 9 10 11")',, 'to be', 1)

check('finds a value in an array of odd length' function||'("3", "1 2 3 4 5 6 7 8 9 10 11")',,
      function||'("3", "1 2 3 4 5 6 7 8 9 10 11")',, 'to be', 3)

check('finds a value in an array of even length' function||'("3", "1 2 3 4 5 6 7 8 9 10")',,
      function||'("3", "1 2 3 4 5 6 7 8 9 10")',, 'to be', 3)

check('identifies that a value is not included in the array' function||'("4", "1 2 3 5 6 7 8 9 10 11")',,
      function||'("4", "1 2 3 5 6 7 8 9 10 11")',, 'to be', 0)

check('a value smaller than the array''s smallest value is not found' function||'("0", "1 2 3 4 5 6 7 8 9 10 11")',,
      function||'("0", "1 2 3 4 5 6 7 8 9 10 11")',, 'to be', 0)

check('a value larger than the array''s largest value is not found' function||'("13", "1 2 3 4 5 6 7 8 9 10 11")',,
      function||'("13", "1 2 3 4 5 6 7 8 9 10 11")',, 'to be', 0)

check('nothing is found in an empty array' function||'("10", "")',,
      function||'("10", "")',, 'to be', 0)

