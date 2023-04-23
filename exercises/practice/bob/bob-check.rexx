/* Unit Test Runner: t-rexx */
context('Checking the Hey function')

/* Unit tests */
check('stating something' 'Hey("Tom-ay-to, tom-aaaah-to.")',,
      'Hey("Tom-ay-to, tom-aaaah-to.")',, 'to be', 'Whatever.')

check('shouting' 'Hey("WATCH OUT!")',,
      'Hey("WATCH OUT!")',, 'to be', 'Whoa, chill out!')

check('shouting gibberish' 'Hey("FCECDFCAAB")',,
      'Hey("FCECDFCAAB")',, 'to be', 'Whoa, chill out!')

check('asking a question' 'Hey("Does this cryogenic chamber make me look fat?")',,
      'Hey("Does this cryogenic chamber make me look fat?")',, 'to be', 'Sure.')

check('asking a numeric question' 'Hey("You are, what, like 15?")',,
      'Hey("You are, what, like 15?")',, 'to be', 'Sure.')

check('asking gibberish' 'Hey("fffbbcbeab?")',,
      'Hey("fffbbcbeab?")',, 'to be', 'Sure.')

check('talking forcefully' 'Hey("Hi there!")',,
      'Hey("Hi there!")',, 'to be', 'Whatever.')

check('using acronyms in regular speech' 'Hey("It's OK if you don't want to go work for NASA.")',,
      'Hey("It's OK if you don't want to go work for NASA.")',, 'to be', 'Whatever.')

check('forceful question' 'Hey("WHAT''S GOING ON?")',,
      'Hey("WHAT''S GOING ON?")',, 'to be', 'Calm down, I know what I''m doing!')

check('shouting numbers' 'Hey("1, 2, 3 GO!")',,
      'Hey("1, 2, 3 GO!")',, 'to be', 'Whoa, chill out!')

check('no letters' 'Hey("1, 2, 3")',,
      'Hey("1, 2, 3")',, 'to be', 'Whatever.')

check('question with no letters' 'Hey("4?")',,
      'Hey("4?")',, 'to be', 'Sure.')

check('shouting with special characters' 'Hey("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!")',,
      'Hey("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!")',, 'to be', 'Whoa, chill out!')

check('shouting with no exclamation mark' 'Hey("I HATE THE DENTIST")',,
      'Hey("I HATE THE DENTIST")',, 'to be', 'Whoa, chill out!')

check('statement containing question mark' 'Hey("Ending with ? means a question.")',,
      'Hey("Ending with ? means a question.")',, 'to be', 'Whatever.')

check('non-letters with question' 'Hey(":) ?")',,
      'Hey(":) ?")',, 'to be', 'Sure.')

check('prattling on' 'Hey("Wait! Hang on. Are you going to be OK?")',,
      'Hey("Wait! Hang on. Are you going to be OK?")',, 'to be', 'Sure.')

check('silence' 'Hey("")',,
      'Hey("")',, 'to be', 'Fine. Be that way!')

check('prolonged silence' 'Hey("                 ")',,
      'Hey("                 ")',, 'to be', 'Fine. Be that way!')

check('alternate silence' 'Hey(COPIES("09"X, 10))',,
      'Hey(COPIES("09"X, 10))',, 'to be', 'Fine. Be that way!')

check('multiple line question' 'Hey("0A"X||"Does this cryogenic chamber make me look fat?"||"0A"X||"No")',,
      'Hey("0A"X||"Does this cryogenic chamber make me look fat?"||"0A"X||"No")',, 'to be', 'Whatever.')

check('starting with whitespace' 'Hey("                hmmmmmmm...")',,
      'Hey("                hmmmmmmm...")',, 'to be', 'Whatever.')

check('ending with whitespace' 'Hey("Okay if like my         spacebar  quite a bit?   ")',,
      'Hey("Okay if like my         spacebar  quite a bit?   ")',, 'to be', 'Sure.')

check('other whitespace' 'Hey("0A"X||"0D"X||" "||"09"X)',,
      'Hey("0A"X||"0D"X||" "||"09"X)',, 'to be', 'Fine. Be that way!')

check('non-question ending with whitespace' 'Hey("This is a statement ending with whitespace             ")',,
      'Hey("This is a statement ending with whitespace             ")',, 'to be', 'Whatever.')

check('no input is silence' 'Hey()',,
      'Hey()',, 'to be', 'Fine. Be that way!')

