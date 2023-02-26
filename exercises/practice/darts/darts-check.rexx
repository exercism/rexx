/* Unit Test Runner: t-rexx */
function = 'Score'
context('Checking the' function 'function')

/* Unit tests */
check('Missed target' function||'(-9, 9)',,
      function||'(-9, 9)',, 'to be', 0)

check('On the outer circle' function||'(0, 10)',,
      function||'(0, 10)',, 'to be', 1)

check('On the middle circle' function||'(-5, 0)',,
      function||'(-5, 0)',, 'to be', 5)

check('On the inner circle' function||'(0, -1)',,
      function||'(0, -1)',, 'to be', 10)

check('Exactly on centre' function||'(0, 0)',,
      function||'(0, 0)',, 'to be', 10)

check('Near the centre' function||'(-0.1, -0.1)',,
      function||'(-0.1, -0.1)',, 'to be', 10)

check('Just within the inner circle' function||'(0.7, 0.7)',,
      function||'(0.7, 0.7)',, 'to be', 10)

check('Just outside the inner circle' function||'(0.8, -0.8)',,
      function||'(0.8, -0.8)',, 'to be', 5)

check('Just within the middle circle' function||'(-3.5, 3.5)',,
      function||'(-3.5, 3.5)',, 'to be', 5)

check('Just outside the middle circle' function||'(-3.6, 3.6)',,
      function||'(-3.6, 3.6)',, 'to be', 1)

check('Just within the outer circle' function||'(-7.0, 7.0)',,
      function||'(-7.0, 7.0)',, 'to be', 1)

check('Just outside the outer circle' function||'(7.1, -7.1)',,
      function||'(7.1, -7.1)',, 'to be', 0)

check('Asymmetric position between the inner and middle circles' function||'(0.5, -4)',,
      function||'(0.5, -4)',, 'to be', 5)

