FindAnagrams : procedure
  parse arg target, candidates
  if target == '' | candidates == '' then ; return ''
  if WORDS(target) > WORDS(candidates) then ; return ''
  parse upper arg upperTarget, upperCandidates
  parse value SortString(upperTarget) ';' SortWordsInList(upperCandidates) ';' ,
              DedupWord(upperCandidates) ';' ,
              WORDS(candidates) 1 '' ,
        with anagramTarget ';' anagramCandidates ';' dedupCandidates ';' ,
             candidateWords startPos anagrams
  if WORDS(dedupCandidates) == 1 & ,
     WORD(dedupCandidates, 1) == upperTarget then ; return ''
  do while startPos <= candidateWords
    anagramPos = WORDPOS(anagramTarget, anagramCandidates, startPos)
    if anagramPos > 0 then do
      candidate  = WORD(candidates, anagramPos)
      if candidate \= target then ; anagrams ||= candidate ''
      startPos = anagramPos + 1
    end ; else ; leave
  end
return STRIP(anagrams)

SortWordsInList : procedure
  parse arg words
  output = '' ; do while words \= ''
    parse var words word words
    output ||= SortString(word) ''
  end
return STRIP(output)

SortString : procedure
  letters = ARG(1) ; parse value LENGTH(letters) SUBSTR(letters, 1, 1) with n sorted
  if n < 2 then ; return sorted
  do i = 2 to n
    next = SUBSTR(letters, i, 1)
    do j = 1 to i-1
      if next < SUBSTR(sorted, j, 1) then do
        if j > 1 then ; lm = SUBSTR(sorted, 1, j-1) ; else lm = ''
        sorted = lm || next || SUBSTR(sorted, j)
        leave j
      end
      if j == i-1 then ; sorted = sorted || next
    end
  end
return STRIP(sorted)

DedupWord : procedure
  parse arg input
  output = '' ; do while input \= ''
    parse var input token input
    if WORDPOS(token, output) < 1 then ; output ||= token ''
  end
return STRIP(output, 'T')
