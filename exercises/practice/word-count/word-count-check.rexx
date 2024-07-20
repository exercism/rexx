/* Unit Test Runner: t-rexx */
context('Checking the WordCount function')

/* Unit tests */
check('count one word' 'WordCount("word")',,
      'WordCount("word")',, '=', 'word 1')

check('count one of each word' 'WordCount("one of each")',,
      'WordCount("one of each")',, '=', 'one 1 of 1 each 1')

check('multiple occurrences of a word' 'WordCount("one fish two fish red fish blue fish")',,
      'WordCount("one fish two fish red fish blue fish")',, '=', 'one 1 fish 4 two 1 red 1 blue 1')

check('handles cramped lists' 'WordCount("one,two,three")',,
      'WordCount("one,two,three")',, '=', 'onetwothree 1')

check('handles expanded lists' 'WordCount("one,"||"0A"X||"two,"||"0A"X||"three")',,
      'WordCount("one,"||"0A"X||"two,"||"0A"X||"three")',, '=', 'one 1 two 1 three 1')

check('ignore punctuation' 'WordCount("car: carpet as java: javascript!!&@$%^&")',,
      'WordCount("car: carpet as java: javascript!!&@$%^&")',, '=', 'car 1 carpet 1 as 1 java 1 javascript 1')

check('include numbers' 'WordCount("testing, 1, 2 testing")',,
      'WordCount("testing, 1, 2 testing")',, '=', 'testing 2 1 1 2 1')

check('normalize case' 'WordCount("go Go GO Stop stop")',,
      'WordCount("go Go GO Stop stop")',, '=', 'go 3 stop 2')

check('with quotations' 'WordCount("Joe can''t tell between ''large'' and large.")',,
      'WordCount("Joe can''t tell between ''large'' and large.")',, '=', "joe 1 can't 1 tell 1 between 1 large 2 and 1")

check('with apostrophes' 'WordCount("First: don''t laugh. Then: don''t cry.")',,
      'WordCount("First: don''t laugh. Then: don''t cry.")',, '=', "first 1 don't 2 laugh 1 then 1 cry 1")

check('multiple spaces not detected as a word' 'WordCount(" multiple    whitespaces")',,
      'WordCount(" multiple    whitespaces")',, '=', 'multiple 1 whitespaces 1')

check('alternating word separators not detected as a word' 'WordCount("one onetwothree one, one;two;three one; ")',,
      'WordCount("one onetwothree one, one;two;three one; ")',, '=', 'one 3 onetwothree 2')

