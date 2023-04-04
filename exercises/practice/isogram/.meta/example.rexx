IsIsogram : procedure
  if ARG() \= 1 then ; return 0
  if ARG(1) == '' then ; return 1
  /* Remove all non-letters, even spaces */
  NON_LETTERS = ' ~`!@#$%^&*()_-+=<,>.?/:;"''0123456789'
  candidate = CHANGESTR(';',,
                        TRANSLATE(UPPER(ARG(1)),, NON_LETTERS, ';'),,
                        '')
  /* Setup letter frequency table (integer indexes) */
  isogram.0 = 26 ; do i = 1 to isogram.0 by 1 ; isogram.i = 0 ; end
  /* Parse input, count up letter occurrences */
  do while candidate \= ''
    parse var candidate letter +1 candidate
    /* Compute table index mapping to letter. Note, 64 is C2D('A') - 1 */
    i = C2D(letter) - 64 ; isogram.i += 1
    /* Bail if any letter occurs more than once */
    if isogram.i > 1 then ; return 0
  end
return 1
