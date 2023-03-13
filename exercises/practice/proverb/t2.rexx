/* rexx unit test framework
   concatenate these files:
   t1.rexx test-script t2.rexx rexx-file-to-test t3.rexx > t.rexx
   then execute t.rexx
   this file is t2.rexx
*/

/* display the test results, either in TAP format, or REPORT format */

if tapOutput == 'TAP' then do
  say '1..'||count

  do i = 1 to checkresult.0
    say checkresult.i
  end
end ; else do
  say divider
  say contextdesc
  say spacer

  do i = 1 to checkresult.0
    say checkresult.i
  end

  say spacer

  text = counts()
  do i = 1 to text.0
    say text.i
  end

  say divider
end

exit (count - passed)

