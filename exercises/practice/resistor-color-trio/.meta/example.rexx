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
  /* Extract and validate colors, compute their numeric value */
  if ARG() < 1 | ARG(1) == '' then ; return ''
  colors = ValidColors(ARG(1), 3) ; if colors == '' then ; return ''
  parse var colors tcolor ucolor zcolor .
  tval = (WORDPOS(tcolor, Colors()) - 1)
  uval = (WORDPOS(ucolor, Colors()) - 1)
  zval = (WORDPOS(zcolor, Colors()) - 1)
  /* Compute resistance value in ohms */
  zeroes = '' ; if zval > 0 then ; zeroes = COPIES('0', zval)
  ohms = (10 * tval + uval) || zeroes
  /* Report resistance value in appropriate units */
  if ohms / 1000000000 >= 1.0 then do
    if ohms // 1000000000 > 0 then
      return (ohms % 1000000000) || (ohms // 1000000000 % 1000000) 'megaohms'
    return (ohms % 1000000000) 'gigaohms'
  end
  if ohms / 1000000 >= 1.0 then do
    if ohms // 1000000 > 0 then
      return (ohms % 1000000) || (ohms // 1000000 % 1000) 'kiloohms'
    return (ohms % 1000000) 'megaohms'
  end
  if ohms / 1000 >= 1.0 then do
    if ohms // 1000 > 0 then
      return (ohms % 1000) || (ohms // 1000 % 1) 'ohms'
    return (ohms % 1000) 'kiloohms'
  end
return ohms 'ohms'
