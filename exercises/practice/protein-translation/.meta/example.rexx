Translate : procedure
  CODON_PROTEIN_MAP = 'AUG:methionine UUU:phenylalanine' ,
    'UUC:phenylalanine UUA:leucine UUG:leucine' ,
    'UCU:serine UCC:serine UCA:serine UCG:serine' ,
    'UAU:tyrosine UAC:tyrosine UGU:cysteine UGC:cysteine' ,
    'UGG:tryptophan UAA:stop UAG:stop UGA:stop'
  if ARG() \= 1 | (LENGTH(ARG(1)) // 3 \= 0) then ; return ''
  parse arg sequence proteins
  do while sequence \= ''
    parse var sequence codon +3 sequence
    codpos = POS(codon, CODON_PROTEIN_MAP)
    if codpos < 1 then ; return ''
    parse value SUBSTR(CODON_PROTEIN_MAP, codpos) with . ':' protein .
    if protein == 'stop' then ; leave
    proteins = proteins protein
  end
return STRIP(proteins, 'L')
