/* Unit Test Runner: t-rexx */
context('Checking the Recite function')

/* Test Variables */
verse_1 = ,
  'This is the house that Jack built.' || "0A"X

verse_2 = ,
  'This is the malt that lay in the house that Jack built.' || "0A"X

verse_3 = ,
  'This is the rat that ate the malt that lay in the house that Jack built.' || "0A"X

verse_4 = ,
  'This is the cat that killed the rat that ate the malt that lay in the house that Jack built.' || "0A"X

verse_5 = ,
  'This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.' || "0A"X

verse_6 = ,
  'This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.' || "0A"X

verse_7 = ,
  'This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.' || "0A"X

verse_8 = ,
  'This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.' || "0A"X

verse_9 = ,
  'This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.' || "0A"X

verse_10 = ,
  'This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.' || "0A"X

verse_11 = ,
  'This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.' || "0A"X

verse_12 = ,
  'This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.' || "0A"X

verses_4_to_8 = ,
  verse_4 || "0A"X || verse_5 || "0A"X || verse_6 || "0A"X || verse_7 || "0A"X || verse_8 || "0A"X

verses_1_to_12_length = 2348

/* Unit tests */
check('verse one - the house that jack built' 'Recite(1)',,
      'Recite(1)',, '=', verse_1)

check('verse two - the malt that lay' 'Recite(2)',,
      'Recite(2)',, '=', verse_2)

check('verse three - the rat that ate' 'Recite(3)',,
      'Recite(3)',, '=', verse_3)

check('verse four - the cat that killed' 'Recite(4)',,
      'Recite(4)',, '=', verse_4)

check('verse five - the dog that worried' 'Recite(5)',,
      'Recite(5)',, '=', verse_5)

check('verse six - the cow with the crumpled horn' 'Recite(6)',,
      'Recite(6)',, '=', verse_6)

check('verse seven - the maiden all forlorn' 'Recite(7)',,
      'Recite(7)',, '=', verse_7)

check('verse eight - the man all tattered and torn' 'Recite(8)',,
      'Recite(8)',, '=', verse_8)

check('verse nine - the priest all shaven and shorn' 'Recite(9)',,
      'Recite(9)',, '=', verse_9)

check('verse 10 - the rooster that crowed in the morn' 'Recite(10)',,
      'Recite(10)',, '=', verse_10)

check('verse 11 - the farmer sowing his corn' 'Recite(11)',,
      'Recite(11)',, '=', verse_11)

check('verse 12 - the horse and the hound and the horn' 'Recite(12)',,
      'Recite(12)',, '=', verse_12)

check('multiple verses' 'Recite(4, 8)',,
      'Recite(4, 8)',, '=', verses_4_to_8)

cmd = 'actual = Recite(1, 12)' ; interpret cmd
check('full rhyme' 'Recite(1, 12)',,
      'Recite(1, 12)', LENGTH(actual), '=', verses_1_to_12_length)

check('invalid verse 1' 'Recite(0, 12)',,
      'Recite(0, 12)',, '=', '')

check('invalid verse 2' 'Recite(1, -1)',,
      'Recite(1, -1)',, '=', '')

check('invalid verse 3' 'Recite(14, 12)',,
      'Recite(14, 12)',, '=', '')

check('invalid verse 4' 'Recite(1, 13)',,
      'Recite(1, 13)',, '=', '')

