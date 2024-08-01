/* Rexx unit test framework
   1. Concatenate these files:

         toplevel (Optional Rexx file containing shared variables)
         t1.rexx
         test-script
         t2.rexx
         rexx-file-to-test
         checkfuncs (Optional Rexx file containing custom testing routines)
         t3.rexx

      to create file:

         t.rexx

   2. Execute t.rexx

   This file is t3.rexx
*/

/* functions for the test framework */

init :
  parse upper arg outputType
  checkNumber = 0
  count = 0
  passed = 0
  failed = 0
  contextdesc = ''
  TASK_ID = 1
  checkresult. = ''
  divider = '----------------------------------------'
  spacer = ' '
  EOL = "0A"X
  output. = '' ; output.0 = 0
return

output : procedure expose output.
  parse arg line
  output.0 = output.0 + 1
  n = output.0 ; output.n = line
return ''

context : procedure expose contextdesc TASK_ID
  parse arg desc, task_identifier
  contextdesc = desc
  if task_identifier \= '' then ; TASK_ID = task_identifier
return ''

check :
  parse arg description, procedureCall, variableName, operation, expectedValue
  checkNumber = checkNumber + 1

  /* Ensure procedureCall *is* supplied */
  if procedureCall == '' then do
    say 'Must include procedureCall' ; exit 1
  end

  /* Only invoke procedure if no variable name supplied */
  returnedValue = ''
  if variableName == '' then do
    if RIGHT(procedureCall, 1) = ')' then
      interpret 'returnedValue = 'procedureCall
    else do ; interpret 'call 'procedureCall  ; returnedValue = RESULT ; end
  end

  assertion = expect(returnedValue, variableName, operation, expectedValue)

  count = count + 1
  checkresult.0 = count

  select
    when outputType == 'TAP' then do
      checkresult.count = assertion count '-' description
    end
    when outputType == 'JSON' then do
      parse value STRIP(assertion) with testResult ':' .
      /* Ensure conforming field values */
      testStatus = 'pass' ; if testResult \= 'PASSED' then ; testStatus = 'fail'
      conjunction = 'and' ; if testStatus \= 'pass' then ; conjunction = 'but'
      if STRIP(expectedValue) = '' then ; expectedValue = "''"
      if STRIP(returnedValue) = '' then ; returnedValue = "''"
      /* Remove procedure name from description if it exists there */
      delidx = POS(procedureCall, description)
      if delidx > 0 then ; description = STRIP(DELSTR(description, delidx))
      /* Quote code parameters if non-numeric */
      if DATATYPE(expectedValue, 'N') then
        testCode = procedureCall op expectedValue
      else
        testCode = procedureCall op "'"expectedValue"'"
      /* Assemble collected output */
      output = ''
      do i = 1 to output.0
        output = output || output.i || EOL
      end
      /* Package test results as JSON */
      checkresult.count = ,
        MakeJSONTestResult( ,
          description,,
          testStatus,,
          'Expected' expectedValue conjunction 'got' returnedValue,,
          output,,
          testCode,,
          TASK_ID,,
          EOL)
    end
    otherwise
      checkresult.count = RIGHT(count, 2) || '. ' || assertion || ' - Test: ' || description
  end

return ''

expect :
  parse arg actual, variableName, op, expected

  if variableName <> '' then
    actualValue = VALUE(variableName)
  else do
    actualValue = actual
  end

  select
    when op == 'to be' | op == '=' then
      return report(actualValue, op, expected, actualValue == expected)
    when op == 'not to be' | op == '\=' | op == '^=' | op == '<>' then
      return report(actualValue, op, expected, actualValue \== expected)
    when op == 'larger than' | op == '>' then
      return report(actualValue, op, expected, actualValue > expected)
    when op == 'larger than or equal to' | op == '>=' then
      return report(actualValue, op, expected, actualValue >= expected)
    when op == 'less than' | op == '<' then
      return report(actualValue, op, expected, actualValue < expected)
    when op == 'less than or equal to' | op == '<=' then
      return report(actualValue, op, expected, actualValue <= expected)
    otherwise do
      say 'operand 'op' unknown. Known operands are:'
      say '  to be (=), '
      say '  not to be (\= or ^= or <>), '
      say '  larger than (>),'
      say '  larger than or equal to (>=), '
      say '  less than (<) and'
      say '  less than or equal to (<=)'
      say '.......exiting'
      exit 1
    end
  end
return

report : procedure expose passed failed outputType
  parse arg actual, op, expected, res
  lineout = ''
  select
    when res == 0 then do
      failed = failed + 1
      if outputType == 'TAP' then
        lineout = 'not ok'
      else do
        lineout = '*** FAILED: Expected "' || expected || '" but got "' || actual || '"'
      end
    end
    when res == 1 then do
      passed = passed + 1
      if outputType == 'TAP' then
        lineout = 'ok'
      else do
        lineout = '    PASSED: Expected "' || expected || '" and got "' || actual || '"'
      end
    end
  end
return lineout

counts : procedure expose text. count passed failed
  text.0 = 3
  text.1 = RIGHT(count, 2) ' checks were executed'
  text.2 = RIGHT(passed, 2) ' checks passed'
  text.3 = RIGHT(failed, 2) ' checks failed'
return text

MakeJSONTestResult : procedure
  parse arg name, status, message, output, test_code, task_id, eol
  message = CHANGESTR('"', CHANGESTR(eol, message, '\n'), '\"')
  output = CHANGESTR('"', CHANGESTR(eol, output, '\n'), '\"')
  test_code = CHANGESTR('"', CHANGESTR(eol, test_code, '\n'), '\"')
  json = ,
    '    {' || eol || ,
    '      "name": "' || name || '",' || eol || ,
    '      "status": "' || status || '",' || eol || ,
    '      "message": "' || message || '",' || eol || ,
    '      "output": "' || output || '",' || eol || ,
    '      "test_code": "' || test_code || '",' || eol || ,
    '      "task_id":' task_id || eol || ,
    '    }'
return json

