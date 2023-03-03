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
/*
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
*/
/* ===
a=99
b=990
c=9900
d=99000
e=990000
f=9900000
g=99000000
h=990000000
i=9900000000
j=99000000000

say a (a % 10) (a // 10) (a / 10) LENGTH(a)
say b (b % 100) (b // 100) (b / 100) LENGTH(b)
say c (c % 1000) (c // 1000) (c / 1000) LENGTH(c)
say d (d % 10000) (d // 10000) (d / 10000) LENGTH(d)
say e (e % 100000) (e // 100000) (e / 100000) LENGTH(e)
say f (f % 1000000) (f // 1000000) (f / 1000000) LENGTH(f)
say g (g % 10000000) (g // 10000000) (g / 10000000) LENGTH(g)
say h (h % 100000000) (h // 100000000) (h / 100000000) LENGTH(h)
say i (i % 1000000000) (i // 1000000000) (i / 1000000000) LENGTH(i)
say j (j % 10000000000) (j // 10000000000) (j / 10000000000) LENGTH(j)

z = 9000
say z '->' (z % 1) (z // 1) (z / 1) LENGTH(z)
say z '->' (z % 10) (z // 10) (z / 10) LENGTH(z)
say z '->' (z % 100) (z // 100) (z / 100) LENGTH(z)
say z '->' (z % 1000) (z // 1000) (z / 1000) LENGTH(z)
say z '->' (z % 10000) (z // 10000) (z / 10000) LENGTH(z)
say z '->' (z % 100000) (z // 100000) (z / 100000) LENGTH(z)
say z '->' (z % 1000000) (z // 1000000) (z / 1000000) LENGTH(z)
say z '->' (z % 10000000) (z // 10000000) (z / 10000000) LENGTH(z)
say z '->' (z % 100000000) (z // 100000000) (z / 100000000) LENGTH(z)
say z '->' (z % 1000000000) (z // 1000000000) (z / 1000000000) LENGTH(z)
=== */

exit 0

/*
  COLORS = 'BLACK BROWN RED ORANGE YELLOW GREEN BLUE VIOLET GREY WHITE'
  parse upper value ARG(1) with tcolor ucolor .
return 10 * (WORDPOS(tcolor, COLORS) - 1) + WORDPOS(ucolor, COLORS) - 1
*/

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
/*  say tval uval zval zeroes */
  final = (10 * tval + uval)
  finalval = final || zeroes
  say finalval
  /*
  lz = LENGTH(zeroes)
  lf = LENGTH(finalval)
  if finalval / 1000000000 >= 1.0 then ; return (finalval % 1000000000) 'gigaohms'
  if finalval / 1000000 >= 1.0 then ; return (finalval % 1000000) 'megaohms'
  if finalval / 1000 >= 1.0 then ; return finalval % 1000) (finalval // 1000) 'kiloohms'
  */

  if finalval / 1000000000 >= 1.0 then do
  /*if finalval // 1000000000 > 0 then ; return (finalval % 1000000000) || (finalval // 1000000000) 'megaohms A' */
    if finalval // 1000000000 > 0 then ; return (finalval % 1000000000) || (finalval // 1000000000 % 1000000) 'megaohms A'
    else ; return (finalval % 1000000000) 'gigaohms'
  end

  if finalval / 1000000 >= 1.0 then do
    if finalval // 1000000 > 0 then ; return (finalval % 1000000) || (finalval // 1000000 % 1000) 'kiloohms A'
    else ; return (finalval % 1000000) 'megaohms'
  end

  if finalval / 1000 >= 1.0 then do
    if finalval // 1000 > 0 then ; return (finalval % 1000) || (finalval // 1000 % 1) 'ohms A'
    else ; return (finalval % 1000) 'kiloohms'
  end

  return finalval 'ohms'

/*
  if lf > 8 then ; return final || COPIES('0', lf - 10) 'gigaohms'
  if lf > 4 then ; return final || COPIES('0', lf - 7) 'megaohms'
  if lf > 2 then ; return final || COPIES('0', lf - 4) 'kiloohms'
return final || zeroes 'ohms'
*/
/*
09   0   09|-          9            BLACK
90       90|-         90
95       95|-         95
99       99|-         99

09   1   09|0         90            BROWN
90       90|0        900
95       95|0        950
99       99|0        990

09   2   09|00       900            RED
90       90|00       9k
95       95|00       9500
99       99|00       9900

09   3   09|000      9k             ORANGE
90       90|000      90k
95       95|000      95k
99       99|000      99k

09   4   09|0000      90k           YELLOW
90       90|0000      900k
95       95|0000      950k
99       99|0000      990k

09   5   09|00000     900k          GREEN
90       90|00000     9M
95       95|00000     9500k
99       99|00000     9900k

09   6   09|000000     9M           BLUE
90       90|000000     90M
95       95|000000     95M
99       99|000000     99M

09   7   09|0000000     90M         VIOLET
90       90|0000000     900M
95       95|0000000     950M
99       99|0000000     990M

09   8   09|00000000     900M       GREY
90       90|00000000     9000M
95       95|00000000     9500M
99       99|00000000     9990M

09   9   09|000000000     9G        WHITE
90       90|000000000     90G
95       95|000000000     95G
99       99|000000000     99G

09  10   09|0000000000     90G
90       90|0000000000     900G
95       95|0000000000     950G
99       99|0000000000     990G
*/
