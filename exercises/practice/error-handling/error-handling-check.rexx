/* Unit Test Runner: t-rexx */
function = 'HandleErrorUsingReturnCode'
context('Checking the' function 'function')

/* Unit tests */
check('HandleErrorUsingReturnCode with valid argument' function||'("value_to_return")',,
      function||'("value_to_return")',, 'to be', 'value_to_return')

check('HandleErrorUsingReturnCode with no argument' function||'()',,
      function||'()',, 'to be', -1)

check('HandleErrorUsingReturnCode with empty string argument' function||'("")',,
      function||'("")',, 'to be', -1)

check('HandleErrorUsingReturnCode with extra arguments' function||'("a", 4, 5.3)',,
      function||'("a", 4, 5.3)',, 'to be', -1)

