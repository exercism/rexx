/* Unit Test Runner: t-rexx */
function = 'WordCount'
context('Checking the' function 'function')

/* Unit tests */
check('count one word' function||'("word")',,
      function||'("word")',, 'to be', 'word 1')

check('count one of each word' function||'("one of each")',,
      function||'("one of each")',, 'to be', 'one 1 of 1 each 1')

check('multiple occurrences of a word' function||'("one fish two fish red fish blue fish")',,
      function||'("one fish two fish red fish blue fish")',, 'to be', 'one 1 fish 4 two 1 red 1 blue 1')

check('handles cramped lists' function||'("one,two,three")',,
      function||'("one,two,three")',, 'to be', 'onetwothree 1')

check('handles expanded lists' function||'("one,"||"0A"X||"two,"||"0A"X||"three")',,
      function||'("one,"||"0A"X||"two,"||"0A"X||"three")',, 'to be', 'one 1 two 1 three 1')

check('ignore punctuation' function||'("car: carpet as java: javascript!!&@$%^&")',,
      function||'("car: carpet as java: javascript!!&@$%^&")',, 'to be', 'car 1 carpet 1 as 1 java 1 javascript 1')

check('include numbers' function||'("testing, 1, 2 testing")',,
      function||'("testing, 1, 2 testing")',, 'to be', 'testing 2 1 1 2 1')

check('normalize case' function||'("go Go GO Stop stop")',,
      function||'("go Go GO Stop stop")',, 'to be', 'go 3 stop 2')

check('with quotations' function||'("Joe can''t tell between ''large'' and large.")',,
      function||'("Joe can''t tell between ''large'' and large.")',, 'to be', "joe 1 can't 1 tell 1 between 1 large 2 and 1")

check('with apostrophes' function||'("First: don''t laugh. Then: don''t cry.")',,
      function||'("First: don''t laugh. Then: don''t cry.")',, 'to be', "first 1 don't 2 laugh 1 then 1 cry 1")

check('multiple spaces not detected as a word' function||'(" multiple   whitespaces")',,
      function||'(" multiple   whitespaces")',, 'to be', 'multiple 1 whitespaces 1')

check('alternating word separators not detected as a word' function||'("one onetwothree one, one;two;three one; ")',,
      function||'("one onetwothree one, one;two;three one; ")',, 'to be', 'one 3 onetwothree 2')

