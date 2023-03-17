Transpose : procedure
  if ARG(1) == '' then ; return ''
  NEWLINE = ARG(2); if ARG(2) == '' then ; NEWLINE = '\n'
  SEP = ';' ; input = CHANGESTR(NEWLINE, ARG(1), SEP)
  cols = -1 ; rows.0 = COUNTSTR(SEP, input) + 1
  do row = 1 to rows.0
    parse var input rowdata (SEP) input
    cols = MAX(cols, LENGTH(rowdata))
    rows.row = rowdata
  end
  output = '' ; do col = 1 to cols
    do row = 1 to rows.0
      output ||= SUBSTR(rows.row, col, 1)
    end
    output ||= SEP
  end
return STRIP(CHANGESTR(SEP, STRIP(output, 'T', SEP), NEWLINE))
