/* Unit Test Runner: t-rexx */
function = 'IsPangram'
context('Checking the' function 'function')

/* Unit tests */
check('empty sentence' function||'("")',,
      function||'("")',, 'to be', 0)

check('perfect lower case' function||'("abcdefghijklmnopqrstuvwxyz")',,
      function||'("abcdefghijklmnopqrstuvwxyz")',, 'to be', 1)

check('only lower case' function||'("the quick brown fox jumps over the lazy dog")',,
      function||'("the quick brown fox jumps over the lazy dog")',, 'to be', 1)

check('missing the letter "x"' function||'("a quick movement of the enemy will jeopardize five gunboats")',,
      function||'("a quick movement of the enemy will jeopardize five gunboats")',, 'to be', 0)

check('missing the letter "h"' function||'("five boxing wizards jump quickly at it")',,
      function||'("five boxing wizards jump quickly at it")',, 'to be', 0)

check('with underscores' function||'("the_quick_brown_fox_jumps_over_the_lazy_dog")',,
      function||'("the_quick_brown_fox_jumps_over_the_lazy_dog")',, 'to be', 1)

check('with numbers' function||'("the 1 quick brown fox jumps over the 2 lazy dogs")',,
      function||'("the 1 quick brown fox jumps over the 2 lazy dogs")',, 'to be', 1)

check('missing letters replaced by numbers' function||'("7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog")',,
      function||'("7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog")',, 'to be', 0)

check('mixed case and punctuation' function||'(""Five quacking Zephyrs jolt my wax bed."")',,
      function||'(""Five quacking Zephyrs jolt my wax bed."")',, 'to be', 1)

check('a-m and A-M are 26 different characters but not a pangram' function||'("the quick brown fox jumps over with lazy FX")',,
      function||'("the quick brown fox jumps over with lazy FX")',, 'to be', 0)

