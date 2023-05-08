/* Unit Test Runner: t-rexx */
context('Checking the IsPangram function')

/* Unit tests */
check('empty sentence' 'IsPangram("")',,
      'IsPangram("")',, 'to be', 0)

check('perfect lower case' 'IsPangram("abcdefghijklmnopqrstuvwxyz")',,
      'IsPangram("abcdefghijklmnopqrstuvwxyz")',, 'to be', 1)

check('only lower case' 'IsPangram("the quick brown fox jumps over the lazy dog")',,
      'IsPangram("the quick brown fox jumps over the lazy dog")',, 'to be', 1)

check('missing the letter "x"' 'IsPangram("a quick movement of the enemy will jeopardize five gunboats")',,
      'IsPangram("a quick movement of the enemy will jeopardize five gunboats")',, 'to be', 0)

check('missing the letter "h"' 'IsPangram("five boxing wizards jump quickly at it")',,
      'IsPangram("five boxing wizards jump quickly at it")',, 'to be', 0)

check('with underscores' 'IsPangram("the_quick_brown_fox_jumps_over_the_lazy_dog")',,
      'IsPangram("the_quick_brown_fox_jumps_over_the_lazy_dog")',, 'to be', 1)

check('with numbers' 'IsPangram("the 1 quick brown fox jumps over the 2 lazy dogs")',,
      'IsPangram("the 1 quick brown fox jumps over the 2 lazy dogs")',, 'to be', 1)

check('missing letters replaced by numbers' 'IsPangram("7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog")',,
      'IsPangram("7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog")',, 'to be', 0)

check('mixed case and punctuation' 'IsPangram(""Five quacking Zephyrs jolt my wax bed."")',,
      'IsPangram(""Five quacking Zephyrs jolt my wax bed."")',, 'to be', 1)

check('a-m and A-M are 26 different characters but not a pangram' 'IsPangram("the quick brown fox jumps over with lazy FX")',,
      'IsPangram("the quick brown fox jumps over with lazy FX")',, 'to be', 0)

