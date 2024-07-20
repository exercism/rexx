/* Unit Test Runner: t-rexx */
context('Checking the DNA2RNA function')

/* Unit tests */
check('Empty RNA sequence' 'DNA2RNA("")',,
      'DNA2RNA("")',, '=', "")

check('RNA complement of cytosine is guanine' 'DNA2RNA("C")',,
      'DNA2RNA("C")',, '=', "G")

check('RNA complement of guanine is cytosine' 'DNA2RNA("G")',,
      'DNA2RNA("G")',, '=', "C")

check('RNA complement of thymine is adenine' 'DNA2RNA("T")',,
      'DNA2RNA("T")',, '=', "A")

check('RNA complement of adenine is uracil' 'DNA2RNA("A")',,
      'DNA2RNA("A")',, '=', "U")

check('RNA complement' 'DNA2RNA("ACGTGGTCTTAA")',,
      'DNA2RNA("ACGTGGTCTTAA")',, '=', "UGCACCAGAAUU")

