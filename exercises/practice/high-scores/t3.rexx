/* rexx unit test framework
   concatenate these files:
   t1.rexx test-script t2.rexx rexx-file-to-test t3.rexx > t.rexx
   then execute t.rexx
   this file is t3.rexx
*/

/* functions for the test framework */

init:
  parse upper arg tapOutput
  checkNumber = 0
  count = 0
  passed = 0
  failed = 0
  contextdesc = ''
  checkresult. = ''
  divider = '----------------------------------------'
  spacer = ' '
return

context:
  parse arg desc
  contextdesc = desc
return ''

check:
  parse arg description, procedureCall, variableName, operation, expectedValue

  checkNumber = checkNumber + 1

  if right(procedureCall,1) = ')' then
    interpret 'returnedValue = 'procedureCall
  else do
    interpret 'call 'procedureCall
    returnedValue = ''
  end
  assertion = expect(returnedValue, variableName, operation, expectedValue)

  count = count + 1
  checkresult.0 = count

  if tapOutput == 'TAP' then
    checkresult.count = assertion count '-' description
  else do
    checkresult.count = right(count,2) || '. ' || assertion || ' - Test: ' || description
  end

return ''

expect:
  parse arg actual, variableName, op, expected
  if variableName <> '' then
    actualValue = value(variableName)
  else do
    actualValue = actual
  end

  select
    when op == 'to be' | op == '=' then
      return report(actualValue, op, expected, actualValue == expected)
    when op == 'not to be' | op == '^=' | op == '<>' then
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
      say '  not to be (^= or <>), '
      say '  larger than (>),'
      say '  larger than or equal to (>=), '
      say '  less than (<) and'
      say '  less than or equal to (<=)'
      say '.......exiting'
      exit
    end
  end
return

report:
  parse arg actual, op, expected, res
  lineout = ''
  select
    when res == 0 then do
      failed = failed + 1
      if tapOutput == 'TAP' then
        lineout = 'not ok'
      else do
        lineout = '*** FAILED: Expected "' || expected || '" but got "' || actual || '"'
      end
    end
    when res == 1 then do
      passed = passed + 1
      if tapOutput == 'TAP' then
        lineout = 'ok'
      else do
        lineout = '    PASSED: Expected "' || expected || '" and got "' || actual || '"'
      end
    end
  end
return lineout

counts:
  text.0 = 3
  text.1 = right(count,2) ' checks were executed'
  text.2 = right(passed,2) ' checks passed'
  text.3 = right(failed,2) ' checks failed'
return text
