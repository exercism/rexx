OrderSequence : procedure
  if ARG() \= 2 | ARG(1) == '' | ARG(2) == '' then ; return ''
  order = ARG(1) ; data = ARG(2) ; output = ''
  do while order \= ''
    parse var order letter +1 order
    pos = POS(letter, data)
    if pos > 0 then do
      parse value SUBSTR(data, pos) with datum .
      output ||= STRIP(datum) ''
    end
  end
return output

Transform : procedure
  if ARG() < 1 | ARG() > 2 | ARG(1) == '' then ; return ''
  RECSEP = ';' ; KEYSEP = ':' ; output = ''
  input = ARG(1) ; do while input \= ''
    parse lower var input record (RECSEP) input
    parse var record key (KEYSEP) data
    do while data \= ''
      parse var data value data
      output ||= value || KEYSEP || key ''
    end
  end
  if ARG(2) \= '' then ; output = OrderSequence(ARG(2), output)
return STRIP(output)
