Distance: procedure
  if ARG() \= 2 | LENGTH(ARG(1)) \= LENGTH(ARG(2)) then ; return -1
  s1 = ARG(1) ; s2 = ARG(2) ; distance = 0
  do while s1 \= ''
    parse var s1 nuc1 +1 s1 ; parse var s2 nuc2 +1 s2
    distance += (nuc1 \= nuc2)
  end
return distance
