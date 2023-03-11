SetCreate : procedure
  if ARG(1) == '' then ; return 'SET;0;'
  elements = SortWords(DedupWord(ARG(1)))
return 'SET;' || WORDS(elements) || ';' || elements

SetAdd : procedure
  parse arg set, newelem
  parse var set 'SET;' size ';' elements
  if WORDPOS(newelem, elements) > 0 then ; return set
return 'SET;' || (size + 1) || ';' || SortWords(newelem elements)

SetDifference : procedure
  parse arg set1, set2
  parse var set1 'SET;' . ';' elements1
  parse var set2 'SET;' . ';' elements2
  elemsCpy = elements2 ; elemsDiff = elements1
  do while elemsCpy \= ''
    parse var elemsCpy elem elemsCpy
    parse value WORDPOS(elem, elemsDiff) with elemPos
    if elemPos > 0 then ; elemsDiff = DELWORD(elemsDiff, elemPos, 1)
  end
return SetCreate(elemsDiff)

SetIntersection : procedure
  parse arg set1, set2
  parse var set1 'SET;' . ';' elements1
  parse var set2 'SET;' . ';' elements2
  elemsCpy = elements2 ; elemsCommon = ''
  do while elemsCpy \= ''
    parse var elemsCpy elem elemsCpy
    if WORDPOS(elem, elements1) > 0 then ; elemsCommon ||= elem ''
  end
  elemsCpy = elements1
  do while elemsCpy \= ''
    parse var elemsCpy elem elemsCpy
    if WORDPOS(elem, elements2) > 0 then ; elemsCommon ||= elem ''
  end
return SetCreate(elemsCommon)

SetUnion : procedure
  parse arg set1, set2
  parse var set1 'SET;' . ';' elements1
  parse var set2 'SET;' . ';' elements2
return SetCreate(elements1 elements2)

SetIsSet : procedure
  if ARG(1) == '' then ; return 0
  if SUBSTR(ARG(1), 1, 4) \= 'SET;' then ; return 0
return 1

SetContains : procedure
  parse arg set, elem
  parse var set 'SET;' size ';' elements
  if size < 1 then ; return 0
return WORDPOS(elem, elements) > 0

SetIsDisjoint : ; return SetIsEmpty(SetIntersection(ARG(1), ARG(2)))

SetIsEmpty : procedure
  parse arg set
  parse var set 'SET;' size ';' .
return size < 1

SetIsEqual : procedure
  parse arg set1, set2
  parse var set1 'SET;' size1 ';' elements1
  parse var set2 'SET;' size2 ';' elements2
  if size1 \= size2 then ; return 0
return elements1 == elements2

SetIsSubset : procedure
  parse arg set1, set2
  parse var set1 'SET;' size1 ';' elements1
  parse var set2 'SET;' size2 ';' elements2
  if size2 < 1 then ; return 1
  if size2 > size1 then ; return 0
  if size2 == size1 then ; return elements2 == elements1
  elemsCpy = elements2
  do while elemsCpy \= ''
    parse var elemsCpy elem elemsCpy
    if WORDPOS(elem, elements1) < 1 then ; return 0
  end
return 1

DedupWord : procedure
  parse arg input
  output = '' ; do while input \= ''
    parse var input token input
    if WORDPOS(token, output) < 1 then ; output ||= token ''
  end
return STRIP(output, 'T')

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
