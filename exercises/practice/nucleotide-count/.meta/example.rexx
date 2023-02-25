Count : procedure
  if ARG() \= 1 | (VERIFY(ARG(1), 'ACGT') \= 0) then ; return ''
  counts.A = 0 ; counts.C = 0 ; counts.G = 0 ; counts.T = 0
  parse arg sequence
  do while sequence \= ''
    parse var sequence nucleotide +1 sequence
    counts.nucleotide += 1
  end
return 'A:' || counts.A 'C:' || counts.C 'G:' || counts.G 'T:' || counts.T
