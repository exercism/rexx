Slices : procedure
  if ARG() \= 2 | \DATATYPE(ARG(1), 'N') | STRIP(ARG(2)) == '' then ; return ''
  parse value ARG(1) ARG(2) LENGTH(ARG(2)) 1 1 '',
        with reqlen input actlen pos stepsize output
  if reqlen < 1 | actlen < reqlen then ; return ''
  original = input
  do while pos <= actlen
    parse var input =(pos) slice +(reqlen) .
    if LENGTH(slice) < reqlen then ; leave
    output ||= slice ''
    pos += stepsize ; input = original
  end
return STRIP(output, 'T')
