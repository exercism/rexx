ColorCode : procedure
  COLORS = 'BLACK BROWN RED ORANGE YELLOW GREEN BLUE VIOLET GREY WHITE'
  parse upper value ARG(1) with tcolor ucolor .
return 10 * (WORDPOS(tcolor, COLORS) - 1) + WORDPOS(ucolor, COLORS) - 1
