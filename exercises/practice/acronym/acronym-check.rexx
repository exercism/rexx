/* Unit Test Runner: t-rexx */
context('Checking the Abbreviate function')

/* Unit tests */
check('basic' 'Abbreviate("Portable Network Graphics")',,
      'Abbreviate("Portable Network Graphics")',, '=', 'PNG')

check('lowercase words' 'Abbreviate("Ruby on Rails")',,
      'Abbreviate("Ruby on Rails")',, '=', 'ROR')

check('punctuation' 'Abbreviate("First In, First Out")',,
      'Abbreviate("First In, First Out")',, '=', 'FIFO')

check('all caps word' 'Abbreviate("GNU Image Manipulation Program")',,
      'Abbreviate("GNU Image Manipulation Program")',, '=', 'GIMP')

check('punctuation without whitespace' 'Abbreviate("Complementary metal-oxide semiconductor")',,
      'Abbreviate("Complementary metal-oxide semiconductor")',, '=', 'CMOS')

check('very long abbreviation' 'Abbreviate("Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me")',,
      'Abbreviate("Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me")',, '=', 'ROTFLSHTMDCOALM')

check('consecutive delimiters' 'Abbreviate("Something - I made up from thin air")',,
      'Abbreviate("Something - I made up from thin air")',, '=', 'SIMUFTA')

check('apostrophes' 'Abbreviate("Halley''s Comet")',,
      'Abbreviate("Halley''s Comet")',, '=', 'HC')

check('underscore emphasis' 'Abbreviate("The Road __Not__ Taken")',,
      'Abbreviate("The Road __Not__ Taken")',, '=', 'TRNT')

