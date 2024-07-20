/* Unit Test Runner: t-rexx */
context('Checking the Count function')

/* Unit tests */
check('Empty strand' 'Count("")',,
      'Count("")',, '=', 'A:0 C:0 G:0 T:0')

check('Can count one nucleotide in single-character input' 'Count("G")',,
      'Count("G")',, '=', 'A:0 C:0 G:1 T:0')

check('Strand with repeated nucleotide' 'Count("GGGGGGG")',,
      'Count("GGGGGGG")',, '=', 'A:0 C:0 G:7 T:0')

check('Strand with repeated nucleotides' 'Count("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")',,
      'Count("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")',, '=', 'A:20 C:12 G:17 T:21')

check('Invalid nucleotides' 'Count("AGXXACT")',,
      'Count("AGXXACT")',, '=', '')

