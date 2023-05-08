/* Unit Test Runner: t-rexx */
context('Checking the Distance function')

/* Unit tests */
check('empty strands' 'Distance("", "")',,
      'Distance("", "")',, 'to be', 0)

check('single letter identical strands' 'Distance("A", "A")',,
      'Distance("A", "A")',, 'to be', 0)

check('single letter different strands' 'Distance("G", "T")',,
      'Distance("G", "T")',, 'to be', 1)

check('long identical strands' 'Distance("GGACTGAAATCTG", "GGACTGAAATCTG")',,
      'Distance("GGACTGAAATCTG", "GGACTGAAATCTG")',, 'to be', 0)

check('long different strands' 'Distance("GGACGGATTCTG", "AGGACGGATTCT")',,
      'Distance("GGACGGATTCTG", "AGGACGGATTCT")',, 'to be', 9)

check('disallow first strand longer' 'Distance("AATG", "AAA")',,
      'Distance("AATG", "AAA")',, 'to be', -1)

check('disallow second strand longer' 'Distance("ATA", "AGTG")',,
      'Distance("ATA", "AGTG")',, 'to be', -1)

check('disallow left empty strand' 'Distance("", "AGTG")',,
      'Distance("", "AGTG")',, 'to be', -1)

check('disallow right empty strand' 'Distance("AGTG", "")',,
      'Distance("AGTG", "")',, 'to be', -1)

check('disallow no input' 'Distance()',,
      'Distance()',, 'to be', -1)

check('expose subtle' 'Distance("A?A", "AAA")',,
      'Distance("A?A", "AAA")',, 'to be', 1)

