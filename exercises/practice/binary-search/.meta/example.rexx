BinarySearch : procedure
  if ARG() \= 2 | ARG(1) == '' then ; return 0
  parse arg needle, haystack
  parse value 1 WORDS(haystack) ,
        with L R
  do while L <= R
    M = (L + R) % 2
    if needle == WORD(haystack, M) then
      if L < M & WORD(haystack, L) == needle then ; return L ; else return M
    if needle < WORD(haystack, M) then ; R = M - 1 ; else L = M + 1
  end
return 0
