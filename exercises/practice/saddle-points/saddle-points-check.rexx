/* Unit Test Runner: t-rexx */
function = 'SaddlePoints'
context('Checking the Saddle Points functions')

/* Test variables */
matrix_empty = MatrixCreate()

matrix_sp_one = MatrixCreate("9 8 7, 5 3 2, 6 6 7")

matrix_sp_zero = MatrixCreate("1 2 3, 3 1 2, 2 3 1")

matrix_sp_multiple_col = MatrixCreate("4 5 4, 3 5 5, 1 5 4")
matrix_sp_multiple_row = MatrixCreate("6 7 8, 5 5 5, 7 5 6")

matrix_sp_bottom_right = MatrixCreate("8 7 9, 6 7 6, 3 2 5")

matrix_sp_non_square = MatrixCreate("3 1 3, 3 2 4")

matrix_sp_single_col = MatrixCreate("2, 1, 4, 1")
matrix_sp_single_row = MatrixCreate("2 5 3 5")

/* Unit tests */
check('Can identify single saddle point' function||'(matrix_sp_one)',,
      function||'(matrix_sp_one)',, 'to be', '2 1')

check('Can identify that empty matrix has no saddle points' function||'(matrix_empty)',,
      function||'(matrix_empty)',, 'to be', '')

check('Can identify lack of saddle points when there are none' function||'(matrix_sp_zero)',,
      function||'(matrix_sp_zero)',, 'to be', '')

check('Can identify multiple saddle points in a column' function||'(matrix_sp_multiple_col)',,
      function||'(matrix_sp_multiple_col)',, 'to be', '1 2 2 2 3 2')

check('Can identify multiple saddle points in a row' function||'(matrix_sp_multiple_row)',,
      function||'(matrix_sp_multiple_row)',, 'to be', '2 1 2 2 2 3')

check('Can identify saddle point in bottom right corner' function||'(matrix_sp_bottom_right)',,
      function||'(matrix_sp_bottom_right)',, 'to be', '3 3')

check('Can identify saddle points in a non square matrix' function||'(matrix_sp_non_square)',,
      function||'(matrix_sp_non_square)',, 'to be', '1 1 1 3')

check('Can identify that saddle points in a single column matrix are those with the minimum value' function||'(matrix_sp_single_col)',,
      function||'(matrix_sp_single_col)',, 'to be', '2 1 4 1')

check('Can identify that saddle points in a single row matrix are those with the maximum value' function||'(matrix_sp_single_row)',,
      function||'(matrix_sp_single_row)',, 'to be', '1 2 1 4')

