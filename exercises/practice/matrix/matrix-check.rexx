/* Unit Test Runner: t-rexx */
context('Checking the Matrix functions')

/* Test Variables */
matrix_1x1 = MatrixCreate("7")
matrix_3x3 = MatrixCreate("3 8 4\n11 7 18\n6 1 4")
matrix_3x3_0AX_sep = MatrixCreate("3 8 4" || "0A"X || "11 7 18" || "0A"X || "6 1 4")
matrix_3x3_comma_sep = MatrixCreate("3 8 4,11 7 18,6 1 4")
matrix_4x3 = MatrixCreate("3 8 4\n11 7 18\n6 1 4\n5 1 4")
matrix_3x4 = MatrixCreate("3 8 4 11\n7 18 6 1\n4 5 1 4")

/* Unit tests */
check('create 3 x 3 matrix (\n separator)' 'MatrixCreate("3 8 4\n11 7 18\n6 1 4")',,
      'MatrixCreate("3 8 4\n11 7 18\n6 1 4")',, 'to be', matrix_3x3)

check('create 3 x 3 matrix (0AX separator)' 'MatrixCreate("3 8 4" || "0A"X || "11 7 18" || "0A"X || "6 1 4")',,
      'MatrixCreate("3 8 4" || "0A"X || "11 7 18" || "0A"X || "6 1 4")',, 'to be', matrix_3x3_0AX_sep)

check('create 3 x 3 matrix (, separator)' 'MatrixCreate("3 8 4,11 7 18,6 1 4")',,
      'MatrixCreate("3 8 4,11 7 18,6 1 4")',, 'to be', matrix_3x3_comma_sep)

check('extract row from one number matrix' 'MatrixRow(matrix_1x1, 1)',,
      'MatrixRow(matrix_1x1, 1)',, 'to be', '7')

check('can extract row' 'MatrixRow(matrix_3x3, 1)',,
      'MatrixRow(matrix_3x3, 1)',, 'to be', '3 8 4')

check('extract row where numbers have different widths' 'MatrixRow(matrix_3x3, 2)',,
      'MatrixRow(matrix_3x3, 2)',, 'to be', '11 7 18')

check('can extract row from non-square matrix with no corresponding column' 'MatrixRow(matrix_4x3, 4)',,
      'MatrixRow(matrix_4x3, 4)',, 'to be', '5 1 4')

check('extract column from one number matrix' 'MatrixCol(matrix_1x1, 1)',,
      'MatrixCol(matrix_1x1, 1)',, 'to be', '7')

check('can extract column' 'MatrixCol(matrix_3x3, 2)',,
      'MatrixCol(matrix_3x3, 2)',, 'to be', '8 7 1')

check('extract column where numbers have different widths' 'MatrixCol(matrix_3x3, 1)',,
      'MatrixCol(matrix_3x3, 1)',, 'to be', '3 11 6')

check('can extract column from non-square matrix with no corresponding column' 'MatrixCol(matrix_3x4, 4)',,
      'MatrixCol(matrix_3x4, 4)',, 'to be', '11 1 4')

