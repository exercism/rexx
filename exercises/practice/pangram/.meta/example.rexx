IsPangram : procedure
  if ARG() \= 1 | ARG(1) == '' then ; return 0
  /* Remove all non-letters, even spaces */
  NON_LETTERS = ' ~`!@#$%^&*()_-+=<,>.?/:;"''0123456789'
  candidate = CHANGESTR(';',,
                        TRANSLATE(UPPER(ARG(1)),, NON_LETTERS, ';'),,
                        '')
  /* Initialize letter frequency table */
  pangram.0 = 26 ; do i = 1 to pangram.0 by 1
    letter = D2C(i + 64) ; pangram.letter = 0
  end
  /* Parse input, count up letter occurrences */
  do while candidate \= ''
    parse var candidate letter +1 candidate ; pangram.letter += 1
  end
  /* Check letters counts, bail on first zero-valued count */
  do i = 1 to pangram.0 by 1
    letter = D2C(i + 64) ; if pangram.letter < 1 then ; return 0
  end
return 1
