/* Unit Test Runner: t-rexx */
context('Checking the Rebase function')

/* Unit tests */
check('single bit to one decimal' 'Rebase(2, "1", 10)',,
      'Rebase(2, "1", 10)',, 'to be', '1')

check('binary to single decimal' 'Rebase(2, "1 0 1", 10)',,
      'Rebase(2, "1 0 1", 10)',, 'to be', '5')

check('single decimal to binary' 'Rebase(10, "5", 2)',,
      'Rebase(10, "5", 2)',, 'to be', '1 0 1')

check('binary to multiple decimal' 'Rebase(2, "1 0 1 0 1 0", 10)',,
      'Rebase(2, "1 0 1 0 1 0", 10)',, 'to be', '4 2')

check('decimal to binary' 'Rebase(10, "4 2", 2)',,
      'Rebase(10, "4 2", 2)',, 'to be', '1 0 1 0 1 0')

check('trinary to hexadecimal' 'Rebase(3, "1 1 2 0", 16)',,
      'Rebase(3, "1 1 2 0", 16)',, 'to be', '2 10')

check('hexadecimal to trinary' 'Rebase(16, "2 10", 3)',,
      'Rebase(16, "2 10", 3)',, 'to be', '1 1 2 0')

check('15 bit integer' 'Rebase(97, "3 46 60", 73)',,
      'Rebase(97, "3 46 60", 73)',, 'to be', '6 10 45')

check('empty list' 'Rebase(2, "", 10)',,
      'Rebase(2, "", 10)',, 'to be', '')

check('single zero' 'Rebase(10, "0", 2)',,
      'Rebase(10, "0", 2)',, 'to be', '')

check('multiple zeroes' 'Rebase(10, "0 0 0", 2)',,
      'Rebase(10, "0 0 0", 2)',, 'to be', '')

check('leading zeros' 'Rebase(7, "0 6 0", 10)',,
      'Rebase(7, "0 6 0", 10)',, 'to be', '4 2')

check('input base is one' 'Rebase(1, "0", 10)',,
      'Rebase(1, "0", 10)',, 'to be', '')

check('input base is zero' 'Rebase(0, "", 10)',,
      'Rebase(0, "", 10)',, 'to be', '')

check('input base is negative' 'Rebase(-2, "1", 10)',,
      'Rebase(-2, "1", 10)',, 'to be', '')

check('negative digit' 'Rebase(2, "1 -1 1 0 1 0", 10)',,
      'Rebase(2, "1 -1 1 0 1 0", 10)',, 'to be', '')

check('invalid positive digit' 'Rebase(2, "1 2 1 0 1 0", 10)',,
      'Rebase(2, "1 2 1 0 1 0", 10)',, 'to be', '')

check('output base is one' 'Rebase(2, "1 0 1 0 1 0", 1)',,
      'Rebase(2, "1 0 1 0 1 0", 1)',, 'to be', '')

check('output base is zero' 'Rebase(10, "7", 0)',,
      'Rebase(10, "7", 0)',, 'to be', '')

check('output base is negative' 'Rebase(2, "1", -7)',,
      'Rebase(2, "1", -7)',, 'to be', '')

check('both bases are negative' 'Rebase(-2, "1", -7)',,
      'Rebase(-2, "1", -7)',, 'to be', '')

