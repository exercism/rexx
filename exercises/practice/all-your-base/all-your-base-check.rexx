/* Unit Test Runner: t-rexx */
function = 'Rebase'
context('Checking the' function 'function')

/* Unit tests */
check('single bit to one decimal' function||'(2, "1", 10)',,
      function||'(2, "1", 10)',, 'to be', '1')

check('binary to single decimal' function||'(2, "1 0 1", 10)',,
      function||'(2, "1 0 1", 10)',, 'to be', '5')

check('single decimal to binary' function||'(10, "5", 2)',,
      function||'(10, "5", 2)',, 'to be', '1 0 1')

check('binary to multiple decimal' function||'(2, "1 0 1 0 1 0", 10)',,
      function||'(2, "1 0 1 0 1 0", 10)',, 'to be', '4 2')

check('decimal to binary' function||'(10, "4 2", 2)',,
      function||'(10, "4 2", 2)',, 'to be', '1 0 1 0 1 0')

check('trinary to hexadecimal' function||'(3, "1 1 2 0", 16)',,
      function||'(3, "1 1 2 0", 16)',, 'to be', '2 10')

check('hexadecimal to trinary' function||'(16, "2 10", 3)',,
      function||'(16, "2 10", 3)',, 'to be', '1 1 2 0')

check('15 bit integer' function||'(97, "3 46 60", 73)',,
      function||'(97, "3 46 60", 73)',, 'to be', '6 10 45')

check('empty list' function||'(2, "", 10)',,
      function||'(2, "", 10)',, 'to be', '')

check('single zero' function||'(10, "0", 2)',,
      function||'(10, "0", 2)',, 'to be', '')

check('multiple zeroes' function||'(10, "0 0 0", 2)',,
      function||'(10, "0 0 0", 2)',, 'to be', '')

check('leading zeros' function||'(7, "0 6 0", 10)',,
      function||'(7, "0 6 0", 10)',, 'to be', '4 2')

check('input base is one' function||'(1, "0", 10)',,
      function||'(1, "0", 10)',, 'to be', '')

check('input base is zero' function||'(0, "", 10)',,
      function||'(0, "", 10)',, 'to be', '')

check('input base is negative' function||'(-2, "1", 10)',,
      function||'(-2, "1", 10)',, 'to be', '')

check('negative digit' function||'(2, "1 -1 1 0 1 0", 10)',,
      function||'(2, "1 -1 1 0 1 0", 10)',, 'to be', '')

check('invalid positive digit' function||'(2, "1 2 1 0 1 0", 10)',,
      function||'(2, "1 2 1 0 1 0", 10)',, 'to be', '')

check('output base is one' function||'(2, "1 0 1 0 1 0", 1)',,
      function||'(2, "1 0 1 0 1 0", 1)',, 'to be', '')

check('output base is zero' function||'(10, "7", 0)',,
      function||'(10, "7", 0)',, 'to be', '')

check('output base is negative' function||'(2, "1", -7)',,
      function||'(2, "1", -7)',, 'to be', '')

check('both bases are negative' function||'(-2, "1", -7)',,
      function||'(-2, "1", -7)',, 'to be', '')

