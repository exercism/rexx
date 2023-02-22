Hey : procedure
  /* Convert \n, \r, \t to spaces, then strip and normalize spaces */
  message = SPACE(TRANSLATE(ARG(1), '   ', "09"X||"0A"X||"0D"X))
  if message == '' then ; return 'Fine. Be that way!'
  isQuestion = RIGHT(message, 1) == '?'
  /* Remove digits and punctuation, but retain spaces */
  NON_LETTERS = '~`!@#$%^&*()_-+=<,>.?/:;"''0123456789'
  message = CHANGESTR(';',,
                      TRANSLATE(message,, NON_LETTERS,,
                                ';'),,
                      '')
  isYelling = message \= '' & message == UPPER(message)
  if isYelling & isQuestion then ; return 'Calm down, I know what I''m doing!'
  if isYelling & \isQuestion then ; return 'Whoa, chill out!'
  if isQuestion then ; return 'Sure.'
return 'Whatever.'
