/* Unit Test Runner: t-rexx */
context('Checking the Translate function')

/* Unit tests */
check('Empty RNA sequence results in no proteins' 'Translate("")',,
      'Translate("")',, 'to be', '')

check('Methionine RNA sequence' 'Translate("AUG")',,
      'Translate("AUG")',, 'to be', 'methionine')

check('Phenylalanine RNA sequence 1' 'Translate("UUU")',,
      'Translate("UUU")',, 'to be', 'phenylalanine')

check('Phenylalanine RNA sequence 2' 'Translate("UUC")',,
      'Translate("UUC")',, 'to be', 'phenylalanine')

check('Leucine RNA sequence 1' 'Translate("UUA")',,
      'Translate("UUA")',, 'to be', 'leucine')

check('Leucine RNA sequence 2' 'Translate("UUG")',,
      'Translate("UUG")',, 'to be', 'leucine')

check('Serine RNA sequence 1' 'Translate("UCU")',,
      'Translate("UCU")',, 'to be', 'serine')

check('Serine RNA sequence 2' 'Translate("UCC")',,
      'Translate("UCC")',, 'to be', 'serine')

check('Serine RNA sequence 3' 'Translate("UCA")',,
      'Translate("UCA")',, 'to be', 'serine')

check('Serine RNA sequence 4' 'Translate("UCG")',,
      'Translate("UCG")',, 'to be', 'serine')

check('Tyrosine RNA sequence 1' 'Translate("UAU")',,
      'Translate("UAU")',, 'to be', 'tyrosine')

check('Tyrosine RNA sequence 2' 'Translate("UAC")',,
      'Translate("UAC")',, 'to be', 'tyrosine')

check('Cysteine RNA sequence 1' 'Translate("UGU")',,
      'Translate("UGU")',, 'to be', 'cysteine')

check('Cysteine RNA sequence 2' 'Translate("UGC")',,
      'Translate("UGC")',, 'to be', 'cysteine')

check('Tryptophan RNA sequence' 'Translate("UGG")',,
      'Translate("UGG")',, 'to be', 'tryptophan')

check('STOP codon RNA sequence 1' 'Translate("UAA")',,
      'Translate("UAA")',, 'to be', '')

check('STOP codon RNA sequence 2' 'Translate("UAG")',,
      'Translate("UAG")',, 'to be', '')

check('STOP codon RNA sequence 3' 'Translate("UGA")',,
      'Translate("UGA")',, 'to be', '')

check('Translate RNA strand into correct protein list' 'Translate("AUGUUUUGG")',,
      'Translate("AUGUUUUGG")',, 'to be', 'methionine phenylalanine tryptophan')

check('Translation stops if STOP codon at beginning of sequence' 'Translate("UAGUGG")',,
      'Translate("UAGUGG")',, 'to be', '')

check('Translation stops if STOP codon at end of two-codon sequence' 'Translate("UGGUAG")',,
      'Translate("UGGUAG")',, 'to be', 'tryptophan')

check('Translation stops if STOP codon at end of three-codon sequence' 'Translate("AUGUUUUAA")',,
      'Translate("AUGUUUUAA")',, 'to be', 'methionine phenylalanine')

check('Translation stops if STOP codon in middle of three-codon sequence' 'Translate("UGGUAGUGG")',,
      'Translate("UGGUAGUGG")',, 'to be', 'tryptophan')

check('Translation stops if STOP codon in middle of six-codon sequence' 'Translate("UGGUGUUAUUAAUGGUUU")',,
      'Translate("UGGUGUUAUUAAUGGUUU")',, 'to be', 'tryptophan cysteine tyrosine')

