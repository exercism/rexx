/* Unit Test Runner: t-rexx */
context('Checking the Transform function')

/* Test Variables */
inputA = '1:A E I O U L N R S T;' ||,
         '2:D G;' ||,
         '3:B C M P;' ||,
         '4:F H V W Y;' ||,
         '5:K;' ||,
         '8:J X;' ||,
         '10:Q Z;'
outputA = 'a:1 e:1 i:1 o:1 u:1 l:1 n:1 r:1 s:1 t:1 d:2 g:2 b:3' ,
          'c:3 m:3 p:3 f:4 h:4 v:4 w:4 y:4 k:5 j:8 x:8 q:10 z:10'

inputB = '1:A E I O U L N R S T;' ||,
         '2:D G;' ||,
         '3:B C M P;' ||,
         '4:F H V W Y;' ||,
         '5:K;' ||,
         '8:J X;' ||,
         '10:Q Z;'
outputB = 'a:1 b:3 c:3 d:2 e:1 f:4 g:2 h:4 i:1 j:8 k:5 l:1 m:3' ,
          'n:1 o:1 p:3 q:10 r:1 s:1 t:1 u:1 v:4 w:4 x:8 y:4 z:10'
orderB = XRANGE('a', 'z')

/* Unit tests */
check('single letter' 'Transform("1:A")',,
      'Transform("1:A")',, '=', "a:1")

check('single score with multiple letters' 'Transform("1:A E I O U;")',,
      'Transform("1:A E I O U;")',, '=', "a:1 e:1 i:1 o:1 u:1")

check('multiple scores with multiple letters' 'Transform("1:A E;2:D G;")',,
      'Transform("1:A E;2:D G;")',, '=', "a:1 e:1 d:2 g:2")

check('multiple scores with differing numbers of letters' 'Transform(inputA)',,
      'Transform(inputA)',, '=', outputA)

check('multiple scores with differing numbers of letters (output ordered)' 'Transform(inputB, orderB)',,
      'Transform(inputB, orderB)',, '=', outputB)

