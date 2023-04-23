/* Unit Test Runner: t-rexx */
context('Checking the BinarySearch function')

/* Unit tests */
check('finds a value in an array with one element' 'BinarySearch("10", "10")',,
      'BinarySearch("10", "10")',, 'to be', 1)

check('finds a value in the middle of an array' 'BinarySearch("6", "1 2 3 4 5 6 7 8 9 10 11")',,
      'BinarySearch("6", "1 2 3 4 5 6 7 8 9 10 11")',, 'to be', 6)

check('finds a value at the beginning of an array' 'BinarySearch("1", "1 2 3 4 5 6 7 8 9 10 11")',,
      'BinarySearch("1", "1 2 3 4 5 6 7 8 9 10 11")',, 'to be', 1)

check('finds a value in an array of odd length' 'BinarySearch("3", "1 2 3 4 5 6 7 8 9 10 11")',,
      'BinarySearch("3", "1 2 3 4 5 6 7 8 9 10 11")',, 'to be', 3)

check('finds a value in an array of even length' 'BinarySearch("3", "1 2 3 4 5 6 7 8 9 10")',,
      'BinarySearch("3", "1 2 3 4 5 6 7 8 9 10")',, 'to be', 3)

check('identifies that a value is not included in the array' 'BinarySearch("4", "1 2 3 5 6 7 8 9 10 11")',,
      'BinarySearch("4", "1 2 3 5 6 7 8 9 10 11")',, 'to be', 0)

check('a value smaller than the array''s smallest value is not found' 'BinarySearch("0", "1 2 3 4 5 6 7 8 9 10 11")',,
      'BinarySearch("0", "1 2 3 4 5 6 7 8 9 10 11")',, 'to be', 0)

check('a value larger than the array''s largest value is not found' 'BinarySearch("13", "1 2 3 4 5 6 7 8 9 10 11")',,
      'BinarySearch("13", "1 2 3 4 5 6 7 8 9 10 11")',, 'to be', 0)

check('nothing is found in an empty array' 'BinarySearch("10", "")',,
      'BinarySearch("10", "")',, 'to be', 0)

