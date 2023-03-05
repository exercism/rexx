NthPrime : procedure
  if ARG() \= 1 | \DATATYPE(ARG(1), 'N') | ARG(1) < 1 then ; return -1
  parse value ARG(1) 0 2 with nthIdx currIdx candidate
  if nthIdx == 1 then ; return 2
  do while currIdx < nthIdx
    prime = 1 ; j = 2 ; do while (j * j) <= candidate
      if candidate // j == 0 then do
        prime = 0 ; leave
      end
      j += 1
    end
    if prime then ; currIdx += 1
    candidate += 1
  end
return candidate - 1
