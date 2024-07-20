/* Unit Test Runner: t-rexx */
context('Checking the Distance function')

/* Unit tests */
check('empty strands' 'Distance("", "")',,
      'Distance("", "")',, '=', 0)

check('single letter identical strands' 'Distance("A", "A")',,
      'Distance("A", "A")',, '=', 0)

check('single letter different strands' 'Distance("G", "T")',,
      'Distance("G", "T")',, '=', 1)

check('long identical strands' 'Distance("GGACTGAAATCTG", "GGACTGAAATCTG")',,
      'Distance("GGACTGAAATCTG", "GGACTGAAATCTG")',, '=', 0)

check('long different strands' 'Distance("GGACGGATTCTG", "AGGACGGATTCT")',,
      'Distance("GGACGGATTCTG", "AGGACGGATTCT")',, '=', 9)

check('disallow first strand longer' 'Distance("AATG", "AAA")',,
      'Distance("AATG", "AAA")',, '=', -1)

check('disallow second strand longer' 'Distance("ATA", "AGTG")',,
      'Distance("ATA", "AGTG")',, '=', -1)

check('disallow left empty strand' 'Distance("", "AGTG")',,
      'Distance("", "AGTG")',, '=', -1)

check('disallow right empty strand' 'Distance("AGTG", "")',,
      'Distance("AGTG", "")',, '=', -1)

check('disallow no input' 'Distance()',,
      'Distance()',, '=', -1)

check('expose subtle' 'Distance("A?A", "AAA")',,
      'Distance("A?A", "AAA")',, '=', 1)

