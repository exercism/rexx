/* Unit Test Runner: t-rexx */
context('Checking the Abbreviate function')

/* Unit tests */
check('basic' 'Abbreviate("Portable Network Graphics")',,
      'Abbreviate("Portable Network Graphics")',, 'to be', 'PNG')

check('lowercase words' 'Abbreviate("Ruby on Rails")',,
      'Abbreviate("Ruby on Rails")',, 'to be', 'ROR')

check('punctuation' 'Abbreviate("First In, First Out")',,
      'Abbreviate("First In, First Out")',, 'to be', 'FIFO')

check('all caps word' 'Abbreviate("GNU Image Manipulation Program")',,
      'Abbreviate("GNU Image Manipulation Program")',, 'to be', 'GIMP')

check('punctuation without whitespace' 'Abbreviate("Complementary metal-oxide semiconductor")',,
      'Abbreviate("Complementary metal-oxide semiconductor")',, 'to be', 'CMOS')

check('very long abbreviation' 'Abbreviate("Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me")',,
      'Abbreviate("Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me")',, 'to be', 'ROTFLSHTMDCOALM')

check('consecutive delimiters' 'Abbreviate("Something - I made up from thin air")',,
      'Abbreviate("Something - I made up from thin air")',, 'to be', 'SIMUFTA')

check('apostrophes' 'Abbreviate("Halley''s Comet")',,
      'Abbreviate("Halley''s Comet")',, 'to be', 'HC')

check('underscore emphasis' 'Abbreviate("The Road __Not__ Taken")',,
      'Abbreviate("The Road __Not__ Taken")',, 'to be', 'TRNT')

