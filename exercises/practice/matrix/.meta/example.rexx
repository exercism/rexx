MatrixCreate : procedure
  if ARG(1) == '' then ; return 'MATRIX;1;1;0'
  SEP = ',' ; parse arg matdata
  select
    when POS('\n', matdata) > 0 then datasep = '\n'
    when POS("0A"X, matdata) > 0 then datasep = "0A"X
    when POS(SEP, matdata) > 0 then datasep = SEP
    otherwise return 'MATRIX;1;1;' || STRIP(matdata)
  end
  rows = COUNTSTR(datasep, matdata) + 1
  matdata = CHANGESTR(datasep, matdata, SEP)
  cols = WORDS(SUBSTR(matdata, 1, POS(SEP, matdata) - 1))
return 'MATRIX;' || rows || ';' || cols || ';' || SPACE(matdata)

MatrixRow : procedure
  parse arg matrix, target
  parse var matrix 'MATRIX;' rows ';' cols ';' data
  if DATATYPE(target, 'N') then do
    if target < 1 then ; target = 1
    if target > rows then ; target = rows
    do r = 1 to rows
      parse var data row ',' data
      if target == r then ; return SPACE(row)
    end
  end
return ''

MatrixCol : procedure
  parse arg matrix, target
  parse var matrix 'MATRIX;' rows ';' cols ';' data
  if DATATYPE(target, 'N') then do
    if target < 1 then ; target = 1
    if target > cols then ; target = cols
    col = '' ; do r = 1 to rows
      parse var data row ',' data
      col ||= WORD(row, target) ''
    end
  return SPACE(col)
  end
return ''
