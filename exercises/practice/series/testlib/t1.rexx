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

   This file is t1.rexx
*/

call init ARG(1)

/* Test script below ******************************************************* */

