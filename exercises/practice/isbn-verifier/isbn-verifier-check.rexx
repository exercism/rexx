/* Unit Test Runner: t-rexx */
context('Checking the IsValid function')

/* Unit tests */
check('valid isbn number' 'IsValid("3-598-21508-8")',,
      'IsValid("3-598-21508-8")',, 'to be', 1)

check('invalid isbn check digit' 'IsValid("3-598-21508-9")',,
      'IsValid("3-598-21508-9")',, 'to be', 0)

check('valid isbn number with a check digit of 10' 'IsValid("3-598-21507-X")',,
      'IsValid("3-598-21507-X")',, 'to be', 1)

check('check digit is a character other than x' 'IsValid("3-598-21507-A")',,
      'IsValid("3-598-21507-A")',, 'to be', 0)

check('invalid character in isbn' 'IsValid("3-598-P1581-X")',,
      'IsValid("3-598-P1581-X")',, 'to be', 0)

check('x is only valid as a check digit' 'IsValid("3-598-2X507-9")',,
      'IsValid("3-598-2X507-9")',, 'to be', 0)

check('valid isbn without separating dashes' 'IsValid("3598215088")',,
      'IsValid("3598215088")',, 'to be', 1)

check('isbn without separating dashes and x as check digit' 'IsValid("359821507X")',,
      'IsValid("359821507X")',, 'to be', 1)

check('isbn without check digit and dashes' 'IsValid("359821507")',,
      'IsValid("359821507")',, 'to be', 0)

check('too long isbn and no dashes' 'IsValid("3598215078X")',,
      'IsValid("3598215078X")',, 'to be', 0)

check('too short isbn' 'IsValid("00")',,
      'IsValid("00")',, 'to be', 0)

check('isbn without check digit' 'IsValid("3-598-21507")',,
      'IsValid("3-598-21507")',, 'to be', 0)

check('check digit of x should not be used for 0' 'IsValid("3-598-21515-X")',,
      'IsValid("3-598-21515-X")',, 'to be', 0)

check('empty isbn' 'IsValid("")',,
      'IsValid("")',, 'to be', 0)

check('input is 9 characters' 'IsValid("134456729")',,
      'IsValid("134456729")',, 'to be', 0)

check('invalid characters are not ignored' 'IsValid("3132P34035")',,
      'IsValid("3132P34035")',, 'to be', 0)

check('input is too long but contains a valid isbn' 'IsValid("98245726788")',,
      'IsValid("98245726788")',, 'to be', 0)

