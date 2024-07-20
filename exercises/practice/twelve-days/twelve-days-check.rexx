/* Unit Test Runner: t-rexx */
context('Checking the Verses and Sing functions')

/* Test Variables */
verse_1 = ,
  'On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.' || "0A"X

verse_2 = ,
  'On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree.' || "0A"X

verse_3 = ,
  'On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.' || "0A"X

verse_4 = ,
  'On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.' || "0A"X

verse_5 = ,
  'On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.' || "0A"X

verse_6 = ,
  'On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.' || "0A"X

verse_7 = ,
  'On the seventh day of Christmas my true love gave to me: seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.' || "0A"X

verse_8 = ,
  'On the eighth day of Christmas my true love gave to me: eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.' || "0A"X

verse_9 = ,
  'On the ninth day of Christmas my true love gave to me: nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.' || "0A"X

verse_10 = ,
  'On the tenth day of Christmas my true love gave to me: ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.' || "0A"X

verse_11 = ,
  'On the eleventh day of Christmas my true love gave to me: eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.' || "0A"X

verse_12 = ,
  'On the twelfth day of Christmas my true love gave to me: twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.' || "0A"X

verse_1_to_3 = ,
  'On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.' || "0A"X || ,
  'On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree.' || "0A"X || ,
  'On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.' || "0A"X

verse_4_to_6 = ,
  'On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.' || "0A"X || ,
  'On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.' || "0A"X || ,
  'On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.' || "0A"X

verse_1_to_12_length = 2370

/* Unit tests */
check('verse -> first day a partridge in a pear tree' 'Verses(1)',,
      'Verses(1)',, '=', verse_1)

check('verse -> second day two turtle doves' 'Verses(2)',,
      'Verses(2)',, '=', verse_2)

check('verse -> third day three french hens' 'Verses(3)',,
      'Verses(3)',, '=', verse_3)

check('verse -> fourth day four calling birds' 'Verses(4)',,
      'Verses(4)',, '=', verse_4)

check('verse -> fifth day five gold rings' 'Verses(5)',,
      'Verses(5)',, '=', verse_5)

check('verse -> sixth day six geese-a-laying' 'Verses(6)',,
      'Verses(6)',, '=', verse_6)

check('verse -> seventh day seven swans-a-swimming' 'Verses(7)',,
      'Verses(7)',, '=', verse_7)

check('verse -> eighth day eight maids-a-milking' 'Verses(8)',,
      'Verses(8)',, '=', verse_8)

check('verse -> ninth day nine ladies dancing' 'Verses(9)',,
      'Verses(9)',, '=', verse_9)

check('verse -> tenth day ten lords-a-leaping' 'Verses(10)',,
      'Verses(10)',, '=', verse_10)

check('verse -> eleventh day eleven pipers piping' 'Verses(11)',,
      'Verses(11)',, '=', verse_11)

check('verse -> twelfth day twelve drummers drumming' 'Verses(12)',,
      'Verses(12)',, '=', verse_12)

check('lyrics -> recites first three verses of the song' 'Sing(1, 3)',,
      'Sing(1, 3)',, '=', verse_1_to_3)

check('lyrics -> recites three verses from the middle of the song' 'Sing(4, 6)',,
      'Sing(4, 6)',, '=', verse_4_to_6)

cmd = 'actual = ' 'Sing(1, 12)' ; interpret cmd
check('lyrics -> recites the whole song' 'Sing(1, 12)',,
      'Sing(1, 12)', LENGTH(actual), '=', verse_1_to_12_length)

