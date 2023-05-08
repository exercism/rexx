/* Unit Test Runner: t-rexx */
context('Checking the HandleErrorUsingReturnCode function')

/* Unit tests */
check('HandleErrorUsingReturnCode with valid argument' 'HandleErrorUsingReturnCode("value_to_return")',,
      'HandleErrorUsingReturnCode("value_to_return")',, 'to be', 'value_to_return')

check('HandleErrorUsingReturnCode with no argument' 'HandleErrorUsingReturnCode()',,
      'HandleErrorUsingReturnCode()',, 'to be', -1)

check('HandleErrorUsingReturnCode with empty string argument' 'HandleErrorUsingReturnCode("")',,
      'HandleErrorUsingReturnCode("")',, 'to be', -1)

check('HandleErrorUsingReturnCode with extra arguments' 'HandleErrorUsingReturnCode("a", 4, 5.3)',,
      'HandleErrorUsingReturnCode("a", 4, 5.3)',, 'to be', -1)

