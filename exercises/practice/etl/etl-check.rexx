/* Unit Test Runner: t-rexx */
function = 'Transform'
context('Checking the' function 'function')

/* Unit tests */
input = '1:A;'
output = 'a:1'
check('single letter' function||'('''input''')',,
      function||'('''input''')',, 'to be', output)

input = '1:A E I O U;'
output = 'a:1 e:1 i:1 o:1 u:1'
check('single score with multiple letters' function||'('''input''')',,
      function||'('''input''')',, 'to be', output)

input = '1:A E;2:D G;'
output = 'a:1 e:1 d:2 g:2'
check('multiple scores with multiple letters' function||'('''input''')',,
      function||'('''input''')',, 'to be', output)

input = '1:A E I O U L N R S T;' ||,
        '2:D G;' ||,
        '3:B C M P;' ||,
        '4:F H V W Y;' ||,
        '5:K;' ||,
        '8:J X;' ||,
        '10:Q Z;'
output = 'a:1 e:1 i:1 o:1 u:1 l:1 n:1 r:1 s:1 t:1 d:2 g:2 b:3' ,
         'c:3 m:3 p:3 f:4 h:4 v:4 w:4 y:4 k:5 j:8 x:8 q:10 z:10'
check('multiple scores with differing numbers of letters ' ,
      function||'('''input''')',,
      function||'('''input''')',, 'to be', output)

input = '1:A E I O U L N R S T;' ||,
        '2:D G;' ||,
        '3:B C M P;' ||,
        '4:F H V W Y;' ||,
        '5:K;' ||,
        '8:J X;' ||,
        '10:Q Z;'
order = XRANGE('a', 'z')
output = 'a:1 b:3 c:3 d:2 e:1 f:4 g:2 h:4 i:1 j:8 k:5 l:1 m:3' ,
         'n:1 o:1 p:3 q:10 r:1 s:1 t:1 u:1 v:4 w:4 x:8 y:4 z:10'
check('multiple scores with differing numbers of letters (output ordered) ' ,
      function||'('''input''','''order''')',,
      function||'('''input''','''order''')',, 'to be', output)

