ClassifyList : procedure
  parse value SPACE(ARG(1)) || ';' || SPACE(ARG(2)) ,
        with L ';' R
  select
    when IsEqual(L, R) then ; listType = 'EQUAL'
    when IsSublist(L, L, R) then ; listType = 'SUBLIST'
    when IsSublist(R, R, L) then ; listType = 'SUPERLIST'
    otherwise listType = 'UNEQUAL'
  end
return listType

Head : ; return WORD(ARG(1), 1)
Tail : ; return DELWORD(ARG(1), 1, 1)

IsEqual : procedure
  parse arg L, R
  if L == '' & R == '' then ; return 1
  if Head(L) == Head(R) then ; return IsEqual(Tail(L), Tail(R))
return 0

IsSublist : procedure
  parse arg S, L, R
  if L == '' then ; return 1
  if L \= '' & R == '' then ; return 0
  if Head(L) == Head(R) then ; return IsSublist(S, Tail(L), Tail(R))
  if Head(S) == Head(R) then ; return IsSublist(S, Tail(S), R)
return IsSublist(S, S, Tail(R))
