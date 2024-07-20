/* Unit Test Runner: t-rexx */
context('Checking the Translate function')

/* Unit tests */
check('Empty RNA sequence results in no proteins' 'Translate("")',,
      'Translate("")',, '=', '')

check('Methionine RNA sequence' 'Translate("AUG")',,
      'Translate("AUG")',, '=', 'methionine')

check('Phenylalanine RNA sequence 1' 'Translate("UUU")',,
      'Translate("UUU")',, '=', 'phenylalanine')

check('Phenylalanine RNA sequence 2' 'Translate("UUC")',,
      'Translate("UUC")',, '=', 'phenylalanine')

check('Leucine RNA sequence 1' 'Translate("UUA")',,
      'Translate("UUA")',, '=', 'leucine')

check('Leucine RNA sequence 2' 'Translate("UUG")',,
      'Translate("UUG")',, '=', 'leucine')

check('Serine RNA sequence 1' 'Translate("UCU")',,
      'Translate("UCU")',, '=', 'serine')

check('Serine RNA sequence 2' 'Translate("UCC")',,
      'Translate("UCC")',, '=', 'serine')

check('Serine RNA sequence 3' 'Translate("UCA")',,
      'Translate("UCA")',, '=', 'serine')

check('Serine RNA sequence 4' 'Translate("UCG")',,
      'Translate("UCG")',, '=', 'serine')

check('Tyrosine RNA sequence 1' 'Translate("UAU")',,
      'Translate("UAU")',, '=', 'tyrosine')

check('Tyrosine RNA sequence 2' 'Translate("UAC")',,
      'Translate("UAC")',, '=', 'tyrosine')

check('Cysteine RNA sequence 1' 'Translate("UGU")',,
      'Translate("UGU")',, '=', 'cysteine')

check('Cysteine RNA sequence 2' 'Translate("UGC")',,
      'Translate("UGC")',, '=', 'cysteine')

check('Tryptophan RNA sequence' 'Translate("UGG")',,
      'Translate("UGG")',, '=', 'tryptophan')

check('STOP codon RNA sequence 1' 'Translate("UAA")',,
      'Translate("UAA")',, '=', '')

check('STOP codon RNA sequence 2' 'Translate("UAG")',,
      'Translate("UAG")',, '=', '')

check('STOP codon RNA sequence 3' 'Translate("UGA")',,
      'Translate("UGA")',, '=', '')

check('Translate RNA strand into correct protein list' 'Translate("AUGUUUUGG")',,
      'Translate("AUGUUUUGG")',, '=', 'methionine phenylalanine tryptophan')

check('Translation stops if STOP codon at beginning of sequence' 'Translate("UAGUGG")',,
      'Translate("UAGUGG")',, '=', '')

check('Translation stops if STOP codon at end of two-codon sequence' 'Translate("UGGUAG")',,
      'Translate("UGGUAG")',, '=', 'tryptophan')

check('Translation stops if STOP codon at end of three-codon sequence' 'Translate("AUGUUUUAA")',,
      'Translate("AUGUUUUAA")',, '=', 'methionine phenylalanine')

check('Translation stops if STOP codon in middle of three-codon sequence' 'Translate("UGGUAGUGG")',,
      'Translate("UGGUAGUGG")',, '=', 'tryptophan')

check('Translation stops if STOP codon in middle of six-codon sequence' 'Translate("UGGUGUUAUUAAUGGUUU")',,
      'Translate("UGGUGUUAUUAAUGGUUU")',, '=', 'tryptophan cysteine tyrosine')

