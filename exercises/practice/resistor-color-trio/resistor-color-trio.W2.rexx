numeric digits 20

say Colors()
say ColorCode()
say ColorCode("")
say ColorCode("red green baz")
say ColorCode("red green black brown")

say ColorCode("red green black")
say ColorCode("red green red")
say ColorCode("red green orange")
say ColorCode("red green yellow")
say ColorCode("red green grey")
say ColorCode("red green white")

say ColorCode("blue black black")
say ColorCode("blue black red")
say ColorCode("blue black orange")
say ColorCode("blue black yellow")
say ColorCode("blue black grey")
say ColorCode("blue black white")

say ColorCode("black violet black")
say ColorCode("black violet red")
say ColorCode("black violet orange")
say ColorCode("black violet yellow")
say ColorCode("black violet grey")
say ColorCode("black violet white")


exit 0

Colors : procedure
return 'BLACK BROWN RED ORANGE YELLOW GREEN BLUE VIOLET GREY WHITE'

ValidColors : procedure
  parse upper arg colors, numcolors
  /* Extract `numcolors` colors only */
  colors_ = SUBSTR(colors,,
                   1,,
                   WORDINDEX(colors, numcolors) + ,
                    WORDLENGTH(colors, numcolors) - 1)
  /* Eliminate excess from input */
  colors = colors_
  /* Validate each color against reference */
  do while colors_ \= ''
    parse var colors_ color colors_
    if WORDPOS(color, Colors()) < 1 then ; return ''
  end
return colors

ColorCode : procedure
  say '----'
  if ARG() < 1 | ARG(1) == '' then ; return 'Y'
  colors = ValidColors(ARG(1), 3) ; if colors == '' then ; return 'X'
  parse var colors tcolor ucolor zcolor .
  tval = (WORDPOS(tcolor, Colors()) - 1)
  uval = (WORDPOS(ucolor, Colors()) - 1)
  zval = (WORDPOS(zcolor, Colors()) - 1)
  zeroes = '' ; if zval > 0 then ; zeroes = COPIES('0', zval)
  final = (10 * tval + uval) || zeroes
  say final

  if final / 1000000000 >= 1.0 then do
    if final // 1000000000 > 0 then ; return (final % 1000000000) || (final // 1000000000 % 1000000) 'megaohms A'
    else ; return (final % 1000000000) 'gigaohms'
  end

  if final / 1000000 >= 1.0 then do
    if final // 1000000 > 0 then ; return (final % 1000000) || (final // 1000000 % 1000) 'kiloohms A'
    else ; return (final % 1000000) 'megaohms'
  end

  if final / 1000 >= 1.0 then do
    if final // 1000 > 0 then ; return (final % 1000) || (final // 1000 % 1) 'ohms A'
    else ; return (final % 1000) 'kiloohms'
  end

return final 'ohms'

