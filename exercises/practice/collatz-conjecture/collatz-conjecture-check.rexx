/* Unit Test Runner: t-rexx */
context('Checking the Steps function')

/* Test Options */
numeric digits 20

/* Unit tests */
check('zero steps for one' 'Steps(1)',,
      'Steps(1)',, 'to be', 0)

check('divide if even' 'Steps(16)',,
      'Steps(16)',, 'to be', 4)

check('even and odd steps' 'Steps(12)',,
      'Steps(12)',, 'to be', 9)

check('large number of even and odd steps' 'Steps(1000000)',,
      'Steps(1000000)',, 'to be', 152)

check('zero is an error' 'Steps(0)',,
      'Steps(0)',, 'to be', -1)

check('negative value is an error' 'Steps(-1)',,
      'Steps(-1)',, 'to be', -1)

