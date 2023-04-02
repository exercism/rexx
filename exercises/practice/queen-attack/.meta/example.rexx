CanAttack : procedure
  parse arg wq, bq
  if wq == '' | bq == '' then ; return ''
  if wq == bq then ; return ''
  if \IsValidBoardPosition(wq) | \IsValidBoardPosition(bq) then ; return ''
  parse value MakeXYPosition(wq) with wqx wqy
  parse value MakeXYPosition(bq) with bqx bqy
  if wqx == '' | bqx == '' then ; return ''
return wqx == bqx | wqy == bqy | ABS(wqx - bqx) == ABS(wqy - bqy)

IsValidXY : procedure
  parse arg x, y
return x < 9 & x > 0 & y < 9 & y > 0

IsValidBoardPosition : procedure
  parse value STRIP(ARG(1)) with colsym +1 row
  validColumn = VERIFY(colsym, 'abcdefgh', 'M') > 0
return row > 0 & row < 9 & validColumn

MakeXYPosition : procedure
  parse arg boardPosition
  parse value IsValidBoardPosition(ARG(1)) with isValidBoardPosition
  if \isValidBoardPosition then ; return ''
  y = C2D(SUBSTR(boardPosition, 1, 1)) - C2D('a') + 1
  x = SUBSTR(boardPosition, 2, 1)
  if \IsValidXY(x, y) then ; return ''
return x y
