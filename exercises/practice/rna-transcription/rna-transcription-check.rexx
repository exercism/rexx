/* Unit Test Runner: t-rexx */
function = 'DNA2RNA'
context('Checking the' function 'function')

/* Unit tests */
check('Empty RNA sequence' function||'("")',,
      function||'("")',, 'to be', "")

check('RNA complement of cytosine is guanine' function||'("C")',,
      function||'("C")',, 'to be', "G")

check('RNA complement of guanine is cytosine' function||'("G")',,
      function||'("G")',, 'to be', "C")

check('RNA complement of thymine is adenine' function||'("T")',,
      function||'("T")',, 'to be', "A")

check('RNA complement of adenine is uracil' function||'("A")',,
      function||'("A")',, 'to be', "U")

check('RNA complement' function||'("ACGTGGTCTTAA")',,
      function||'("ACGTGGTCTTAA")',, 'to be', "UGCACCAGAAUU")

