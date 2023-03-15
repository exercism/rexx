ScoresCreate : procedure
  parse value SPACE(ARG(1)) with scores
  if scores == '' | ,
     VERIFY(CHANGESTR(' ', scores, ''), '0123456789', 'N') > 0 then
       return 'SCORES;'
return 'SCORES;' || scores

ScoresList : procedure
  parse value ARG(3) || ';' || ARG(2) || ';' || WORDS(ARG(1)) || ARG(1) ,
        with sortOrder ';' required ';' words 'SCORES;' scores
  if words == 1 then ; return scores
  select
    when sortOrder == 'A' then scores = sortWords(scores)
    when sortOrder == 'D' then scores = reverseWords(sortWords(scores))
    otherwise nop
  end
  if \DATATYPE(required, 'N') | required > words then ; return scores
  if required == 0 then ; return ''
  if required < 0 then ; return SUBWORD(scores, MAX(words + required + 1, 1))
return SUBWORD(scores, 1, required)

ScoresGetLatest : procedure
  required = ARG(2)
  if ARG(3) \= '' then do
    scores = ScoresList(ARG(1))
    wordpos = WORDPOS(ARG(3), scores)
    if required == 0 | required == '' then ; return SUBWORD(scores, wordpos + 1)
    return SUBWORD(scores, wordpos + 1, required)
  end ; else do
    if DATATYPE(required, 'N') & required > 0 then ; required = 0 - required
    if required == '' then ; required = -1
    return ScoresList(ARG(1), required)
  end

ScoresGetPersonalBest : procedure
  required = ARG(2) ; sortOrder = ARG(3)
  if required == '' then ; required = -1
  if sortOrder == '' then do
    sortOrder = 'A'
    if required > 0 then ; required = 0 - required
  end
return ScoresList(ARG(1), required, sortOrder)

SortWords: procedure
  words = ARG(1) ; parse value WORDS(words) WORD(words, 1) with n sorted
  if n < 2 then ; return sorted
  do i = 2 to n
    next = WORD(words, i)
    do j = 1 to i-1
      if next < WORD(sorted, j) then do
        if j > 1 then ; lm = SUBWORD(sorted, 1, j-1) ; else lm = ''
        sorted = lm next SUBWORD(sorted, j)
        leave j
      end
      if j == i-1 then ; sorted = sorted next
    end
  end
return STRIP(sorted)

ReverseWords: procedure
  words = ARG(1) ; n = WORDS(words) ; revwords = ''
  do i = n to 1 by -1
    revwords = revwords WORD(words, i)
  end
return STRIP(revwords)
