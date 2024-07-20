/* Unit Test Runner: t-rexx */
context('Checking the SaddlePoints function')

/* Test Variables */
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
check('Can identify single saddle point' 'SaddlePoints(matrix_sp_one)',,
      'SaddlePoints(matrix_sp_one)',, '=', '2 1')

check('Can identify that empty matrix has no saddle points' 'SaddlePoints(matrix_empty)',,
      'SaddlePoints(matrix_empty)',, '=', '')

check('Can identify lack of saddle points when there are none' 'SaddlePoints(matrix_sp_zero)',,
      'SaddlePoints(matrix_sp_zero)',, '=', '')

check('Can identify multiple saddle points in a column' 'SaddlePoints(matrix_sp_multiple_col)',,
      'SaddlePoints(matrix_sp_multiple_col)',, '=', '1 2 2 2 3 2')

check('Can identify multiple saddle points in a row' 'SaddlePoints(matrix_sp_multiple_row)',,
      'SaddlePoints(matrix_sp_multiple_row)',, '=', '2 1 2 2 2 3')

check('Can identify saddle point in bottom right corner' 'SaddlePoints(matrix_sp_bottom_right)',,
      'SaddlePoints(matrix_sp_bottom_right)',, '=', '3 3')

check('Can identify saddle points in a non square matrix' 'SaddlePoints(matrix_sp_non_square)',,
      'SaddlePoints(matrix_sp_non_square)',, '=', '1 1 1 3')

check('Can identify that saddle points in a single column matrix are those with the minimum value' 'SaddlePoints(matrix_sp_single_col)',,
      'SaddlePoints(matrix_sp_single_col)',, '=', '2 1 4 1')

check('Can identify that saddle points in a single row matrix are those with the maximum value' 'SaddlePoints(matrix_sp_single_row)',,
      'SaddlePoints(matrix_sp_single_row)',, '=', '1 2 1 4')

