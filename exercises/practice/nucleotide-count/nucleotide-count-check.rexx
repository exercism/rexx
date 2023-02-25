/* Unit Test Runner: t-rexx */
function = 'Count'
context('Checking the' function 'function')

/* Unit tests */
Strand = 'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGAT' || ,
         'TAAAAAAAGAGTGTCTGATAGCAGC'

check('Empty strand' function||'("")',,
      function||'("")',, 'to be', 'A:0 C:0 G:0 T:0')

check('Can count one nucleotide in single-character input' function||'("G")',,
      function||'("G")',, 'to be', 'A:0 C:0 G:1 T:0')

check('Strand with repeated nucleotide' function||'("GGGGGGG")',,
      function||'("GGGGGGG")',, 'to be', 'A:0 C:0 G:7 T:0')

check('Strand with repeated nucleotides' function||'('Strand')',,
      function||'('Strand')',, 'to be', 'A:20 C:12 G:17 T:21')

check('Invalid nucleotides' function||'("AGXXACT")',,
      function||'("AGXXACT")',, 'to be', '')

