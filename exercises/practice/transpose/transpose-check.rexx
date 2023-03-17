/* Unit Test Runner: t-rexx */
function = 'Transpose'
context('Checking the' function 'function')

/* Unit tests */
check('empty string' function||'("")',,
      function||'("")',, 'to be', '')

check('two characters in a row' function||'("A1")',,
      function||'("A1")',, 'to be', 'A\n1')

check('two characters in a column' function||'("A\n1")',,
      function||'("A\n1")',, 'to be', 'A1')

check('simple' function||'("ABC\n123")',,
      function||'("ABC\n123")',, 'to be', 'A1\nB2\nC3')

check('single line' function||'("Single line.")',,
      function||'("Single line.")',, 'to be', 'S\ni\nn\ng\nl\ne\n \nl\ni\nn\ne\n.')

result = Transpose("The fourth line.\nThe fifth line.")
check('first line longer than second line' function||'("The fourth line.\nThe fifth line.")',,
      function||'("The fourth line.\nThe fifth line.")', 'result', 'to be', 'TT\nhh\nee\n  \nff\noi\nuf\nrt\nth\nh \n l\nli\nin\nne\ne.\n.')

result = Transpose("The first line.\nThe second line.")
check('second line longer than first line' function||'("The first line.\nThe second line.")',,
      function||'("The first line.\nThe second line.")', 'result', 'to be', 'TT\nhh\nee\n  \nfs\nie\nrc\nso\ntn\n d\nl \nil\nni\nen\n.e\n .')

result = Transpose("The longest line.\nA long line.\nA longer line.\nA line.")
check('mixed line length' function||'("The longest line.\nA long line.\nA longer line.\nA line.")',,
      function||'("The longest line.\nA long line.\nA longer line.\nA line.")', 'result', 'to be', 'TAAA\nh   \nelll\n ooi\nlnnn\nogge\nn e.\nglr \nei  \nsnl \ntei \n .n \nl e \ni . \nn   \ne   \n.')

result = Transpose("HEART\nEMBER\nABUSE\nRESIN\nTREND")
check('square' function||'("HEART\nEMBER\nABUSE\nRESIN\nTREND")',,
      function||'("HEART\nEMBER\nABUSE\nRESIN\nTREND")', 'result', 'to be', 'HEART\nEMBER\nABUSE\nRESIN\nTREND')

result = Transpose("FRACTURE\nOUTLINED\nBLOOMING\nSEPTETTE")
check('rectangle' function||'("FRACTURE\nOUTLINED\nBLOOMING\nSEPTETTE")',,
      function||'("FRACTURE\nOUTLINED\nBLOOMING\nSEPTETTE")', 'result', 'to be', 'FOBS\nRULE\nATOP\nCLOT\nTIME\nUNIT\nRENT\nEDGE')

result = Transpose("T\nEE\nAAA\nSSSS\nEEEEE\nRRRRRR")
check('triangle' function||'("T\nEE\nAAA\nSSSS\nEEEEE\nRRRRRR")',,
      function||'("T\nEE\nAAA\nSSSS\nEEEEE\nRRRRRR")', 'result', 'to be', 'TEASER\n EASER\n  ASER\n   SER\n    ER\n     R')

result = Transpose("11\n2\n3333\n444\n555555\n66666")
check('jagged triangle' function||'("11\n2\n3333\n444\n555555\n66666")',,
      function||'("11\n2\n3333\n444\n555555\n66666")', 'result', 'to be', '123456\n1 3456\n  3456\n  3 56\n    56\n    5')

