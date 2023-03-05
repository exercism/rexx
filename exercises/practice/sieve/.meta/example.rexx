Sieve : procedure
  if ARG() \= 1 | \DATATYPE(ARG(1), 'N') | ARG(1) < 2 then ; return ''
  parse value ARG(1) with limit primes
  sieve.0 = limit ; do i = 1 to limit ; sieve.i = 1 ; end
  do i = 2 to limit
    if \sieve.i then ; iterate
    primes ||= i ''
    do j = (2 * i) to limit by i ; sieve.j = 0 ; end
  end
return STRIP(primes, 'T')
