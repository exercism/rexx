/* Unit Test Runner: t-rexx */
context('Checking the HandleErrorUsingReturnCode function')

/* Unit tests */
check('HandleErrorUsingReturnCode with valid argument' 'HandleErrorUsingReturnCode("value_to_return")',,
      'HandleErrorUsingReturnCode("value_to_return")',, '=', 'value_to_return')

check('HandleErrorUsingReturnCode with no argument' 'HandleErrorUsingReturnCode()',,
      'HandleErrorUsingReturnCode()',, '=', -1)

check('HandleErrorUsingReturnCode with empty string argument' 'HandleErrorUsingReturnCode("")',,
      'HandleErrorUsingReturnCode("")',, '=', -1)

check('HandleErrorUsingReturnCode with extra arguments' 'HandleErrorUsingReturnCode("a", 4, 5.3)',,
      'HandleErrorUsingReturnCode("a", 4, 5.3)',, '=', -1)

