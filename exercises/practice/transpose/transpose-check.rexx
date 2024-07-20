/* Unit Test Runner: t-rexx */
context('Checking the Transpose function')

/* Unit tests */
check('empty string' 'Transpose("")',,
      'Transpose("")',, '=', '')

check('two characters in a row' 'Transpose("A1")',,
      'Transpose("A1")',, '=', 'A\n1')

check('two characters in a column' 'Transpose("A\n1")',,
      'Transpose("A\n1")',, '=', 'A1')

check('simple' 'Transpose("ABC\n123")',,
      'Transpose("ABC\n123")',, '=', 'A1\nB2\nC3')

check('single line' 'Transpose("Single line.")',,
      'Transpose("Single line.")',, '=', 'S\ni\nn\ng\nl\ne\n \nl\ni\nn\ne\n.')

check('first line longer than second line' 'Transpose("The fourth line.\nThe fifth line.")',,
      'Transpose("The fourth line.\nThe fifth line.")',, '=', 'TT\nhh\nee\n  \nff\noi\nuf\nrt\nth\nh \n l\nli\nin\nne\ne.\n.')

check('second line longer than first line' 'Transpose("The first line.\nThe second line.")',,
      'Transpose("The first line.\nThe second line.")',, '=', 'TT\nhh\nee\n  \nfs\nie\nrc\nso\ntn\n d\nl \nil\nni\nen\n.e\n .')

check('mixed line length' 'Transpose("The longest line.\nA long line.\nA longer line.\nA line.")',,
      'Transpose("The longest line.\nA long line.\nA longer line.\nA line.")',, '=', 'TAAA\nh   \nelll\n ooi\nlnnn\nogge\nn e.\nglr \nei  \nsnl \ntei \n .n \nl e \ni . \nn   \ne   \n.')

check('square' 'Transpose("HEART\nEMBER\nABUSE\nRESIN\nTREND")',,
      'Transpose("HEART\nEMBER\nABUSE\nRESIN\nTREND")',, '=', 'HEART\nEMBER\nABUSE\nRESIN\nTREND')

check('rectangle' 'Transpose("FRACTURE\nOUTLINED\nBLOOMING\nSEPTETTE")',,
      'Transpose("FRACTURE\nOUTLINED\nBLOOMING\nSEPTETTE")',, '=', 'FOBS\nRULE\nATOP\nCLOT\nTIME\nUNIT\nRENT\nEDGE')

check('triangle' 'Transpose("T\nEE\nAAA\nSSSS\nEEEEE\nRRRRRR")',,
      'Transpose("T\nEE\nAAA\nSSSS\nEEEEE\nRRRRRR")',, '=', 'TEASER\n EASER\n  ASER\n   SER\n    ER\n     R')

check('jagged triangle' 'Transpose("11\n2\n3333\n444\n555555\n66666")',,
      'Transpose("11\n2\n3333\n444\n555555\n66666")',, '=', '123456\n1 3456\n  3456\n  3 56\n    56\n    5')

