/* Unit Test Runner: t-rexx */
function = 'Hey'
context('Checking the' function 'function')

/* Unit tests */
check('stating something' function||'("Tom-ay-to, tom-aaaah-to.")',,
      function||'("Tom-ay-to, tom-aaaah-to.")',, 'to be', 'Whatever.')

check('shouting' function||'("WATCH OUT!")',,
      function||'("WATCH OUT!")',, 'to be', 'Whoa, chill out!')

check('shouting gibberish' function||'("FCECDFCAAB")',,
      function||'("FCECDFCAAB")',, 'to be', 'Whoa, chill out!')

check('asking a question' function||'("Does this cryogenic chamber make me look fat?")',,
      function||'("Does this cryogenic chamber make me look fat?")',, 'to be', 'Sure.')

check('asking a numeric question' function||'("You are, what, like 15?")',,
      function||'("You are, what, like 15?")',, 'to be', 'Sure.')

check('asking gibberish' function||'("fffbbcbeab?")',,
      function||'("fffbbcbeab?")',, 'to be', 'Sure.')

check('talking forcefully' function||'("Hi there!")',,
      function||'("Hi there!")',, 'to be', 'Whatever.')

check('using acronyms in regular speech' function||'("It's OK if you don't want to go work for NASA.")',,
      function||'("It's OK if you don't want to go work for NASA.")',, 'to be', 'Whatever.')

check('forceful question' function||'("WHAT''S GOING ON?")',,
      function||'("WHAT''S GOING ON?")',, 'to be', 'Calm down, I know what I''m doing!')

check('shouting numbers' function||'("1, 2, 3 GO!")',,
      function||'("1, 2, 3 GO!")',, 'to be', 'Whoa, chill out!')

check('no letters' function||'("1, 2, 3")',,
      function||'("1, 2, 3")',, 'to be', 'Whatever.')

check('question with no letters' function||'("4?")',,
      function||'("4?")',, 'to be', 'Sure.')

check('shouting with special characters' function||'("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!")',,
      function||'("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!")',, 'to be', 'Whoa, chill out!')

check('shouting with no exclamation mark' function||'("I HATE THE DENTIST")',,
      function||'("I HATE THE DENTIST")',, 'to be', 'Whoa, chill out!')

check('statement containing question mark' function||'("Ending with ? means a question.")',,
      function||'("Ending with ? means a question.")',, 'to be', 'Whatever.')

check('non-letters with question' function||'(":) ?")',,
      function||'(":) ?")',, 'to be', 'Sure.')

check('prattling on' function||'("Wait! Hang on. Are you going to be OK?")',,
      function||'("Wait! Hang on. Are you going to be OK?")',, 'to be', 'Sure.')

check('silence' function||'("")',,
      function||'("")',, 'to be', 'Fine. Be that way!')

check('prolonged silence' function||'("          ")',,
      function||'("          ")',, 'to be', 'Fine. Be that way!')

check('alternate silence' function||'(COPIES("09"X, 10))',,
      function||'(COPIES("09"X, 10))',, 'to be', 'Fine. Be that way!')

check('multiple line question' function||'("0A"X||"Does this cryogenic chamber make me look fat?"||"0A"X||"No")',,
      function||'("0A"X||"Does this cryogenic chamber make me look fat?"||"0A"X||"No")',, 'to be', 'Whatever.')

check('starting with whitespace' function||'("         hmmmmmmm...")',,
      function||'("         hmmmmmmm...")',, 'to be', 'Whatever.')

check('ending with whitespace' function||'("Okay if like my  spacebar  quite a bit?   ")',,
      function||'("Okay if like my  spacebar  quite a bit?   ")',, 'to be', 'Sure.')

check('other whitespace' function||'("0A"X||"0D"X||" "||"09"X)',,
      function||'("0A"X||"0D"X||" "||"09"X)',, 'to be', 'Fine. Be that way!')

check('non-question ending with whitespace' function||'("This is a statement ending with whitespace      ")',,
      function||'("This is a statement ending with whitespace      ")',, 'to be', 'Whatever.')

check('no input is silence' function||'()',,
      function||'()',, 'to be', 'Fine. Be that way!')

