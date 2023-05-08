/* Unit Test Runner: t-rexx */
context('Checking the Score function')

/* Unit tests */
check('Missed target' 'Score(-9, 9)',,
      'Score(-9, 9)',, 'to be', 0)

check('On the outer circle' 'Score(0, 10)',,
      'Score(0, 10)',, 'to be', 1)

check('On the middle circle' 'Score(-5, 0)',,
      'Score(-5, 0)',, 'to be', 5)

check('On the inner circle' 'Score(0, -1)',,
      'Score(0, -1)',, 'to be', 10)

check('Exactly on centre' 'Score(0, 0)',,
      'Score(0, 0)',, 'to be', 10)

check('Near the centre' 'Score(-0.1, -0.1)',,
      'Score(-0.1, -0.1)',, 'to be', 10)

check('Just within the inner circle' 'Score(0.7, 0.7)',,
      'Score(0.7, 0.7)',, 'to be', 10)

check('Just outside the inner circle' 'Score(0.8, -0.8)',,
      'Score(0.8, -0.8)',, 'to be', 5)

check('Just within the middle circle' 'Score(-3.5, 3.5)',,
      'Score(-3.5, 3.5)',, 'to be', 5)

check('Just outside the middle circle' 'Score(-3.6, 3.6)',,
      'Score(-3.6, 3.6)',, 'to be', 1)

check('Just within the outer circle' 'Score(-7.0, 7.0)',,
      'Score(-7.0, 7.0)',, 'to be', 1)

check('Just outside the outer circle' 'Score(7.1, -7.1)',,
      'Score(7.1, -7.1)',, 'to be', 0)

check('Asymmetric position between the inner and middle circles' 'Score(0.5, -4)',,
      'Score(0.5, -4)',, 'to be', 5)

