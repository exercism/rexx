/* Unit Test Runner: t-rexx */
context('Checking the DNA2RNA function')

/* Unit tests */
check('Empty RNA sequence' 'DNA2RNA("")',,
      'DNA2RNA("")',, 'to be', "")

check('RNA complement of cytosine is guanine' 'DNA2RNA("C")',,
      'DNA2RNA("C")',, 'to be', "G")

check('RNA complement of guanine is cytosine' 'DNA2RNA("G")',,
      'DNA2RNA("G")',, 'to be', "C")

check('RNA complement of thymine is adenine' 'DNA2RNA("T")',,
      'DNA2RNA("T")',, 'to be', "A")

check('RNA complement of adenine is uracil' 'DNA2RNA("A")',,
      'DNA2RNA("A")',, 'to be', "U")

check('RNA complement' 'DNA2RNA("ACGTGGTCTTAA")',,
      'DNA2RNA("ACGTGGTCTTAA")',, 'to be', "UGCACCAGAAUU")

