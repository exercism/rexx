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

   This file is t2.rexx
*/

/* display the test results, either in TAP, JSON, or REPORT format */

select
  when outputType == 'TAP' then do
    say '1..'||count
    do i = 1 to checkresult.0
      say checkresult.i
    end
  end
  when outputType == 'JSON' then do
    text = counts() ; idx = 3 ; failed = WORD(SPACE(text.idx), 1)
    status = 'pass' ; if failed > 0 then ; status = 'fail'
    outtests = '' ; do i = 1 to checkresult.0
      outtests ||= checkresult.i || ',' || EOL
    end
    outtests = SUBSTR(outtests, 1, LENGTH(outtests) - 2)
    json = ,
      '{' || EOL || ,
      '  "version": 3,' || EOL || ,
      '  "status": "' || status || '",' || EOL || ,
      '  "message": null,' || EOL || ,
      '  "tests": [' || EOL || ,
      outtests || EOL || ,
      '  ]' || EOL || ,
      '}'
    say json
  end
  otherwise
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

