/* Unit Test Runner: t-rexx */
context('Checking the Hey function')

/* Unit tests */
check('stating something' 'Hey("Tom-ay-to, tom-aaaah-to.")',,
      'Hey("Tom-ay-to, tom-aaaah-to.")',, '=', 'Whatever.')

check('shouting' 'Hey("WATCH OUT!")',,
      'Hey("WATCH OUT!")',, '=', 'Whoa, chill out!')

check('shouting gibberish' 'Hey("FCECDFCAAB")',,
      'Hey("FCECDFCAAB")',, '=', 'Whoa, chill out!')

check('asking a question' 'Hey("Does this cryogenic chamber make me look fat?")',,
      'Hey("Does this cryogenic chamber make me look fat?")',, '=', 'Sure.')

check('asking a numeric question' 'Hey("You are, what, like 15?")',,
      'Hey("You are, what, like 15?")',, '=', 'Sure.')

check('asking gibberish' 'Hey("fffbbcbeab?")',,
      'Hey("fffbbcbeab?")',, '=', 'Sure.')

check('talking forcefully' 'Hey("Hi there!")',,
      'Hey("Hi there!")',, '=', 'Whatever.')

check('using acronyms in regular speech' 'Hey("It's OK if you don't want to go work for NASA.")',,
      'Hey("It's OK if you don't want to go work for NASA.")',, '=', 'Whatever.')

check('forceful question' 'Hey("WHAT''S GOING ON?")',,
      'Hey("WHAT''S GOING ON?")',, '=', 'Calm down, I know what I''m doing!')

check('shouting numbers' 'Hey("1, 2, 3 GO!")',,
      'Hey("1, 2, 3 GO!")',, '=', 'Whoa, chill out!')

check('no letters' 'Hey("1, 2, 3")',,
      'Hey("1, 2, 3")',, '=', 'Whatever.')

check('question with no letters' 'Hey("4?")',,
      'Hey("4?")',, '=', 'Sure.')

check('shouting with special characters' 'Hey("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!")',,
      'Hey("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!")',, '=', 'Whoa, chill out!')

check('shouting with no exclamation mark' 'Hey("I HATE THE DENTIST")',,
      'Hey("I HATE THE DENTIST")',, '=', 'Whoa, chill out!')

check('statement containing question mark' 'Hey("Ending with ? means a question.")',,
      'Hey("Ending with ? means a question.")',, '=', 'Whatever.')

check('non-letters with question' 'Hey(":) ?")',,
      'Hey(":) ?")',, '=', 'Sure.')

check('prattling on' 'Hey("Wait! Hang on. Are you going = OK?")',,
      'Hey("Wait! Hang on. Are you going = OK?")',, '=', 'Sure.')

check('silence' 'Hey("")',,
      'Hey("")',, '=', 'Fine. Be that way!')

check('prolonged silence' 'Hey("                 ")',,
      'Hey("                 ")',, '=', 'Fine. Be that way!')

check('alternate silence' 'Hey(COPIES("09"X, 10))',,
      'Hey(COPIES("09"X, 10))',, '=', 'Fine. Be that way!')

check('multiple line question' 'Hey("0A"X||"Does this cryogenic chamber make me look fat?"||"0A"X||"No")',,
      'Hey("0A"X||"Does this cryogenic chamber make me look fat?"||"0A"X||"No")',, '=', 'Whatever.')

check('starting with whitespace' 'Hey("                hmmmmmmm...")',,
      'Hey("                hmmmmmmm...")',, '=', 'Whatever.')

check('ending with whitespace' 'Hey("Okay if like my         spacebar  quite a bit?   ")',,
      'Hey("Okay if like my         spacebar  quite a bit?   ")',, '=', 'Sure.')

check('other whitespace' 'Hey("0A"X||"0D"X||" "||"09"X)',,
      'Hey("0A"X||"0D"X||" "||"09"X)',, '=', 'Fine. Be that way!')

check('non-question ending with whitespace' 'Hey("This is a statement ending with whitespace             ")',,
      'Hey("This is a statement ending with whitespace             ")',, '=', 'Whatever.')

check('no input is silence' 'Hey()',,
      'Hey()',, '=', 'Fine. Be that way!')

