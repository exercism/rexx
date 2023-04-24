/* Unit Test Runner: t-rexx */
context('Checking the List-Ops functions')

/* Unit tests */
check('append entries to a list and return the new list -> empty lists' 'Append("", "")',,
      'Append("", "")',, 'to be', '')

check('append entries to a list and return the new list -> list to empty list' 'Append("", "1 2 3 4")',,
      'Append("", "1 2 3 4")',, 'to be', '1 2 3 4')

check('append entries to a list and return the new list -> empty list to list' 'Append("1 2 3 4", "")',,
      'Append("1 2 3 4", "")',, 'to be', '1 2 3 4')

check('append entries to a list and return the new list -> non-empty lists' 'Append("1 2 3 4", "5 6 7 8")',,
      'Append("1 2 3 4", "5 6 7 8")',, 'to be', '1 2 3 4 5 6 7 8')

check('filter list returning only values that satisfy the filter function -> empty list' 'Filter("", "IsEven")',,
      'Filter("", "IsEven")',, 'to be', '')

check('filter list returning only values that satisfy the filter function -> non-empty list' 'Filter("1 2 3 4", "IsEven")',,
      'Filter("1 2 3 4", "IsEven")',, 'to be', '2 4')

check('returns the length of a list -> empty list' 'ListLength("")',,
      'ListLength("")',, 'to be', 0)

check('returns the length of a list -> non-empty list' 'ListLength("1 2 3 4")',,
      'ListLength("1 2 3 4")',, 'to be', 4)

check('return a list of elements whose values equal the list value transformed by the mapping function -> empty list' 'Map("", "Add1")',,
      'Map("", "Add1")',, 'to be', '')

check('return a list of elements whose values equal the list value transformed by the mapping function -> non-empty list' 'Map("1 2 3 4", "Add1")',,
      'Map("1 2 3 4", "Add1")',, 'to be', '2 3 4 5')

check('folds (reduces) the given list from the left with a function -> empty list' 'FoldL("", "Multiply", 1)',,
      'FoldL("", "Multiply", 1)',, 'to be', 1)

check('folds (reduces) the given list from the left with a function -> direction independent function applied to non-empty list' 'FoldL("1 2 3 4", "Multiply", 1)',,
      'FoldL("1 2 3 4", "Multiply", 1)',, 'to be', 24)

check('folds (reduces) the given list from the left with a function -> direction dependent function applied to non-empty list' 'FoldL("1 2 3 4", "IntegerDivide", 1)',,
      'FoldL("4 2 5 5", "IntegerDivide", 200)',, 'to be', 1)

check('folds (reduces) the given list from the left with a function -> empty list' 'FoldL("", "Concatenate", "")',,
      'FoldL("", "Concatenate", "")',, 'to be', '')

check('folds (reduces) the given list from the left with a function -> direction dependent function applied to non-empty list' 'FoldL("A B C D", "Concatenate", "")',,
      'FoldL("A B C D", "Concatenate", "")',, 'to be', 'A B C D')

check('folds (reduces) the given list from the right with a function -> empty list' 'FoldR("", "Multiply", 1)',,
      'FoldR("", "Multiply", 1)',, 'to be', 1)

check('folds (reduces) the given list from the right with a function -> direction independent function applied to non-empty list' 'FoldR("1 2 3 4", "Multiply", 1)',,
      'FoldR("1 2 3 4", "Multiply", 1)',, 'to be', 24)

check('folds (reduces) the given list from the right with a function -> direction dependent function applied to non-empty list' 'FoldR("1 2 3 4", "IntegerDivide", 1)',,
      'FoldR("5 5 2 4", "IntegerDivide", 200)',, 'to be', 1)

check('folds (reduces) the given list from the right with a function -> empty list' 'FoldR("", "Concatenate", "")',,
      'FoldR("", "Concatenate", "")',, 'to be', '')

check('folds (reduces) the given list from the right with a function -> direction dependent function applied to non-empty list' 'FoldR("A B C D", "Concatenate", "")',,
      'FoldR("A B C D", "Concatenate", "")',, 'to be', 'D C B A')

check('reverse the elements of the list -> empty list' 'ListReverse("")',,
      'ListReverse("")',, 'to be', '')

check('reverse the elements of the list -> non-empty list' 'ListReverse("1 2 3 4 5")',,
      'ListReverse("1 2 3 4 5")',, 'to be', '5 4 3 2 1')

