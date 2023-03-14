/* Unit Test Runner: t-rexx */
function = 'Recite'
context('Checking the' function 'function')

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
check('verse one - the house that jack built' function||'(1)',,
      function||'(1)',, 'to be', verse_1)

check('verse two - the malt that lay' function||'(2)',,
      function||'(2)',, 'to be', verse_2)

check('verse three - the rat that ate' function||'(3)',,
      function||'(3)',, 'to be', verse_3)

check('verse four - the cat that killed' function||'(4)',,
      function||'(4)',, 'to be', verse_4)

check('verse five - the dog that worried' function||'(5)',,
      function||'(5)',, 'to be', verse_5)

check('verse six - the cow with the crumpled horn' function||'(6)',,
      function||'(6)',, 'to be', verse_6)

check('verse seven - the maiden all forlorn' function||'(7)',,
      function||'(7)',, 'to be', verse_7)

check('verse eight - the man all tattered and torn' function||'(8)',,
      function||'(8)',, 'to be', verse_8)

check('verse nine - the priest all shaven and shorn' function||'(9)',,
      function||'(9)',, 'to be', verse_9)

check('verse 10 - the rooster that crowed in the morn' function||'(10)',,
      function||'(10)',, 'to be', verse_10)

check('verse 11 - the farmer sowing his corn' function||'(11)',,
      function||'(11)',, 'to be', verse_11)

check('verse 12 - the horse and the hound and the horn' function||'(12)',,
      function||'(12)',, 'to be', verse_12)

check('multiple verses' function||'(4, 8)',,
      function||'(4, 8)',, 'to be', verses_4_to_8)

cmd = 'actual = ' function||'(1, 12)' ; interpret cmd
check('full rhyme' function||'(1, 12)',,
      function||'(1, 12)', LENGTH(actual), 'to be', verses_1_to_12_length)

check('invalid verse 1' function||'(0, 12)',,
      function||'(0, 12)',, 'to be', '')

check('invalid verse 2' function||'(1, -1)',,
      function||'(1, -1)',, 'to be', '')

check('invalid verse 3' function||'(14, 12)',,
      function||'(14, 12)',, 'to be', '')

check('invalid verse 4' function||'(1, 13)',,
      function||'(1, 13)',, 'to be', '')

