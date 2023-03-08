/* Unit Test Runner: t-rexx */
context('Checking the' function 'function')

/* Unit tests */
function = 'Append'
check('append entries to a list and return the new list -> empty lists' function||'("", "")',,
      function||'("", "")',, 'to be', '')

check('append entries to a list and return the new list -> list to empty list' function||'("", "1 2 3 4")',,
      function||'("", "1 2 3 4")',, 'to be', '1 2 3 4')

check('append entries to a list and return the new list -> empty list to list' function||'("1 2 3 4", "")',,
      function||'("1 2 3 4", "")',, 'to be', '1 2 3 4')

check('append entries to a list and return the new list -> non-empty lists' function||'("1 2 3 4", "5 6 7 8")',,
      function||'("1 2 3 4", "5 6 7 8")',, 'to be', '1 2 3 4 5 6 7 8')

function = 'Filter'
check('filter list returning only values that satisfy the filter function -> empty list' function||'("", "IsEven")',,
      function||'("", "IsEven")',, 'to be', '')

check('filter list returning only values that satisfy the filter function -> non-empty list' function||'("1 2 3 4", "IsEven")',,
      function||'("1 2 3 4", "IsEven")',, 'to be', '2 4')

function = 'ListLength'
check('returns the length of a list -> empty list' function||'("")',,
      function||'("")',, 'to be', 0)

check('returns the length of a list -> non-empty list' function||'("1 2 3 4")',,
      function||'("1 2 3 4")',, 'to be', 4)

function = 'Map'
check('return a list of elements whose values equal the list value transformed by the mapping function -> empty list' function||'("", "Add1")',,
      function||'("", "Add1")',, 'to be', '')

check('return a list of elements whose values equal the list value transformed by the mapping function -> non-empty list' function||'("1 2 3 4", "Add1")',,
      function||'("1 2 3 4", "Add1")',, 'to be', '2 3 4 5')

function = 'FoldL'
check('folds (reduces) the given list from the left with a function -> empty list' function||'("", "Multiply", 1)',,
      function||'("", "Multiply", 1)',, 'to be', 1)

check('folds (reduces) the given list from the left with a function -> direction independent function applied to non-empty list' function||'("1 2 3 4", "Multiply", 1)',,
      function||'("1 2 3 4", "Multiply", 1)',, 'to be', 24)

check('folds (reduces) the given list from the left with a function -> direction dependent function applied to non-empty list' function||'("1 2 3 4", "IntegerDivide", 1)',,
      function||'("4 2 5 5", "IntegerDivide", 200)',, 'to be', 1)

check('folds (reduces) the given list from the left with a function -> empty list' function||'("", "Concatenate", "")',,
      function||'("", "Concatenate", "")',, 'to be', '')

check('folds (reduces) the given list from the left with a function -> direction dependent function applied to non-empty list' function||'("A B C D", "Concatenate", "")',,
      function||'("A B C D", "Concatenate", "")',, 'to be', 'A B C D')

function = 'FoldR'
check('folds (reduces) the given list from the right with a function -> empty list' function||'("", "Multiply", 1)',,
      function||'("", "Multiply", 1)',, 'to be', 1)

check('folds (reduces) the given list from the right with a function -> direction independent function applied to non-empty list' function||'("1 2 3 4", "Multiply", 1)',,
      function||'("1 2 3 4", "Multiply", 1)',, 'to be', 24)

check('folds (reduces) the given list from the right with a function -> direction dependent function applied to non-empty list' function||'("1 2 3 4", "IntegerDivide", 1)',,
      function||'("5 5 2 4", "IntegerDivide", 200)',, 'to be', 1)

check('folds (reduces) the given list from the right with a function -> empty list' function||'("", "Concatenate", "")',,
      function||'("", "Concatenate", "")',, 'to be', '')

check('folds (reduces) the given list from the right with a function -> direction dependent function applied to non-empty list' function||'("A B C D", "Concatenate", "")',,
      function||'("A B C D", "Concatenate", "")',, 'to be', 'D C B A')

function = 'ListReverse'
check('reverse the elements of the list -> empty list' function||'("")',,
      function||'("")',, 'to be', '')

check('reverse the elements of the list -> non-empty list' function||'("1 2 3 4 5")',,
      function||'("1 2 3 4 5")',, 'to be', '5 4 3 2 1')

