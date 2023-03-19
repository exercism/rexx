Sum : procedure
  parse value ARG(1) || ';' || ARG(2) || ';' || 0 ,
        with  factors   ';'    limit     ';'    sum
  if VERIFY(factors, ' 0123456789', 'N') > 0 | ,
     \DATATYPE(limit, 'N') | limit < 2 then ; return 0
  limit -= 1 ; do i = 1 to limit
    do while factors \= ''
      parse var factors factor factors
      if factor < 1 then ; iterate
      if i // factor == 0 then do ; sum += i ; leave ; end
    end
    factors = ARG(1)
  end
return sum
