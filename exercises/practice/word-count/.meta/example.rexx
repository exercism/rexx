WordCount : procedure
  /* Validate, then sanitize, input */
  if ARG() < 1 | ARG(1) == '' then ; return ''
  sanitized = STRIP(CHANGESTR(';',,
                              TRANSLATE(ARG(1),, '~`!@#$%^&*()_-+=<,>.?/:;"',,
                                        ';'),,
                              ''))
  /* Perform input analysis and tally up word count */
  keys = '' ; freq.0 = 0 ; idx = 0
  do while sanitized \= ''
    parse lower var sanitized token sanitized
    token = STRIP(token, 'B', "'")
    if WORDPOS(token, keys) == 0 then do
      keys = keys token ; idx = WORDPOS(token, keys)
      freq.0 = freq.0 + 1 ; freq.idx = 1
    end ; else do
      idx = WORDPOS(token, keys) ; freq.idx = freq.idx + 1
    end
  end
  /* Assemble, then return, word count result table */
  freqtbl = '' ; idx = 1
  do while idx <= freq.0
    freqtbl = freqtbl WORD(keys, idx) freq.idx
    idx = idx + 1
  end
return STRIP(freqtbl)
