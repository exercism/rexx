Abbreviate: procedure
  if ARG() \= 1 | ARG(1) == '' then ; return ''
  /* Convert hyphen to space, so as to act as word separator */
  phrase = CHANGESTR('-', ARG(1), ' ')
  /* Remove punctuation, but retain (and normalize) spaces */
  phrase = SPACE(CHANGESTR(';',,
                           TRANSLATE(phrase,, '~`!@#$%^&*()_+=<,>.?/:;"''',,
                                     ';'),,
                           ''))
  abbreviation = '' ; do while phrase \= ''
    parse upper var phrase word phrase ; abbreviation ||= LEFT(word, 1)
  end
return abbreviation
