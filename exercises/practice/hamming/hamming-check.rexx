/* Unit Test Runner: t-rexx */
function = 'Distance'
context('Checking the' function 'function')

/* Unit tests */
check('empty strands' function||'("", "")',,
      function||'("", "")',, 'to be', 0)

check('single letter identical strands' function||'("A", "A")',,
      function||'("A", "A")',, 'to be', 0)

check('single letter different strands' function||'("G", "T")',,
      function||'("G", "T")',, 'to be', 1)

check('long identical strands' function||'("GGACTGAAATCTG", "GGACTGAAATCTG")',,
      function||'("GGACTGAAATCTG", "GGACTGAAATCTG")',, 'to be', 0)

check('long different strands' function||'("GGACGGATTCTG", "AGGACGGATTCT")',,
      function||'("GGACGGATTCTG", "AGGACGGATTCT")',, 'to be', 9)

check('disallow first strand longer' function||'("AATG", "AAA")',,
      function||'("AATG", "AAA")',, 'to be', -1)

check('disallow second strand longer' function||'("ATA", "AGTG")',,
      function||'("ATA", "AGTG")',, 'to be', -1)

check('disallow left empty strand' function||'("", "AGTG")',,
      function||'("", "AGTG")',, 'to be', -1)

check('disallow right empty strand' function||'("AGTG", "")',,
      function||'("AGTG", "")',, 'to be', -1)

check('disallow no input' function||'()',,
      function||'()',, 'to be', -1)

check('expose subtle' function||'("A?A", "AAA")',,
      function||'("A?A", "AAA")',, 'to be', 1)

