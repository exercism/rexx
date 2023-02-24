/* Unit Test Runner: t-rexx */
function = 'Translate'
context('Checking the' function 'function')

/* Unit tests */
check('Empty RNA sequence results in no proteins' function||'("")',,
      function||'("")',, 'to be', '')

check('Methionine RNA sequence' function||'("AUG")',,
      function||'("AUG")',, 'to be', 'methionine')

check('Phenylalanine RNA sequence 1' function||'("UUU")',,
      function||'("UUU")',, 'to be', 'phenylalanine')

check('Phenylalanine RNA sequence 2' function||'("UUC")',,
      function||'("UUC")',, 'to be', 'phenylalanine')

check('Leucine RNA sequence 1' function||'("UUA")',,
      function||'("UUA")',, 'to be', 'leucine')

check('Leucine RNA sequence 2' function||'("UUG")',,
      function||'("UUG")',, 'to be', 'leucine')

check('Serine RNA sequence 1' function||'("UCU")',,
      function||'("UCU")',, 'to be', 'serine')

check('Serine RNA sequence 2' function||'("UCC")',,
      function||'("UCC")',, 'to be', 'serine')

check('Serine RNA sequence 3' function||'("UCA")',,
      function||'("UCA")',, 'to be', 'serine')

check('Serine RNA sequence 4' function||'("UCG")',,
      function||'("UCG")',, 'to be', 'serine')

check('Tyrosine RNA sequence 1' function||'("UAU")',,
      function||'("UAU")',, 'to be', 'tyrosine')

check('Tyrosine RNA sequence 2' function||'("UAC")',,
      function||'("UAC")',, 'to be', 'tyrosine')

check('Cysteine RNA sequence 1' function||'("UGU")',,
      function||'("UGU")',, 'to be', 'cysteine')

check('Cysteine RNA sequence 2' function||'("UGC")',,
      function||'("UGC")',, 'to be', 'cysteine')

check('Tryptophan RNA sequence' function||'("UGG")',,
      function||'("UGG")',, 'to be', 'tryptophan')

check('STOP codon RNA sequence 1' function||'("UAA")',,
      function||'("UAA")',, 'to be', '')

check('STOP codon RNA sequence 2' function||'("UAG")',,
      function||'("UAG")',, 'to be', '')

check('STOP codon RNA sequence 3' function||'("UGA")',,
      function||'("UGA")',, 'to be', '')

check('Translate RNA strand into correct protein list' function||'("AUGUUUUGG")',,
      function||'("AUGUUUUGG")',, 'to be', 'methionine phenylalanine tryptophan')

check('Translation stops if STOP codon at beginning of sequence' function||'("UAGUGG")',,
      function||'("UAGUGG")',, 'to be', '')

check('Translation stops if STOP codon at end of two-codon sequence' function||'("UGGUAG")',,
      function||'("UGGUAG")',, 'to be', 'tryptophan')

check('Translation stops if STOP codon at end of three-codon sequence' function||'("AUGUUUUAA")',,
      function||'("AUGUUUUAA")',, 'to be', 'methionine phenylalanine')

check('Translation stops if STOP codon in middle of three-codon sequence' function||'("UGGUAGUGG")',,
      function||'("UGGUAGUGG")',, 'to be', 'tryptophan')

check('Translation stops if STOP codon in middle of six-codon sequence' function||'("UGGUGUUAUUAAUGGUUU")',,
      function||'("UGGUGUUAUUAAUGGUUU")',, 'to be', 'tryptophan cysteine tyrosine')

