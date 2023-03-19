MatrixIsEmpty : ; return ARG(1) == 'MATRIX;0;0;'

MatrixCreate : procedure
  if ARG(1) == '' then ; return 'MATRIX;0;0;'
  SEP = ',' ; parse arg matdata
  select
    when POS('\n', matdata) > 0 then datasep = '\n'
    when POS("0A"X, matdata) > 0 then datasep = "0A"X
    when POS(SEP, matdata) > 0 then datasep = SEP
    otherwise return 'MATRIX;1;' || WORDS(matdata) || ';' || STRIP(matdata)
  end
  rows = COUNTSTR(datasep, matdata) + 1
  matdata = CHANGESTR(datasep, matdata, SEP)
  cols = WORDS(SUBSTR(matdata, 1, POS(SEP, matdata) - 1))
return 'MATRIX;' || rows || ';' || cols || ';' || SPACE(matdata)

SaddlePoints : procedure
  parse arg matrix ; if MatrixIsEmpty(matrix) then ; return ''
  parse var matrix 'MATRIX;' rows ';' cols ';' data
  parse value GenerateMaxMinValues(matrix) ,
        with maxValues ';' minValues
  saddlePoints = '' ; do r = 1 to rows
    parse var data row ',' data
    row = STRIP(row)
    do c = 1 to cols
      element = WORD(row, c)
      if element == WORD(maxValues, r) & element == WORD(minValues, c) then
        saddlePoints ||= r c ''
    end
  end
return STRIP(saddlePoints)

GenerateMaxMinValues : procedure
  parse value ARG(1) with 'MATRIX;' rows ';' cols ';' data
  maxrows = '' ; mincols = ''
  do r = 1 to rows
    parse var data row ',' data
    row = STRIP(row) ; rowmax = -1
    do c = 1 to cols
      parse var row element row
      element = STRIP(element)
      column.r.c = element
      if element > rowmax then ; rowmax = element
    end
    maxrows ||= rowmax ''
  end
  do c = 1 to cols
    colmin = 999999
    do r = 1 to rows
      if column.r.c < colmin then ; colmin = column.r.c
    end
    mincols ||= colmin ''
  end
return STRIP(maxrows) ';' STRIP(mincols)
