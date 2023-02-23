/* Unit Test Runner: t-rexx */
function = 'Abbreviate'
context('Checking the' function 'function')

/* Unit tests */
check('basic' function||'("Portable Network Graphics")',,
      function||'("Portable Network Graphics")',, 'to be', 'PNG')

check('lowercase words' function||'("Ruby on Rails")',,
      function||'("Ruby on Rails")',, 'to be', 'ROR')

check('punctuation' function||'("First In, First Out")',,
      function||'("First In, First Out")',, 'to be', 'FIFO')

check('all caps word' function||'("GNU Image Manipulation Program")',,
      function||'("GNU Image Manipulation Program")',, 'to be', 'GIMP')

check('punctuation without whitespace' function||'("Complementary metal-oxide semiconductor")',,
      function||'("Complementary metal-oxide semiconductor")',, 'to be', 'CMOS')

check('very long abbreviation' function||'("Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me")',,
      function||'("Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me")',, 'to be', 'ROTFLSHTMDCOALM')

check('consecutive delimiters' function||'("Something - I made up from thin air")',,
      function||'("Something - I made up from thin air")',, 'to be', 'SIMUFTA')

check('apostrophes' function||'("Halley''s Comet")',,
      function||'("Halley''s Comet")',, 'to be', 'HC')

check('underscore emphasis' function||'("The Road __Not__ Taken")',,
      function||'("The Road __Not__ Taken")',, 'to be', 'TRNT')

