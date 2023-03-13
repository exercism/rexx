/* Unit Test Runner: t-rexx */
context('Checking the Twelve Days exercise functions')

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
function = 'Verses'
check('verse -> first day a partridge in a pear tree' function||'(1)',,
      function||'(1)',, 'to be', verse_1)

check('verse -> second day two turtle doves' function||'(2)',,
      function||'(2)',, 'to be', verse_2)

check('verse -> third day three french hens' function||'(3)',,
      function||'(3)',, 'to be', verse_3)

check('verse -> fourth day four calling birds' function||'(4)',,
      function||'(4)',, 'to be', verse_4)

check('verse -> fifth day five gold rings' function||'(5)',,
      function||'(5)',, 'to be', verse_5)

check('verse -> sixth day six geese-a-laying' function||'(6)',,
      function||'(6)',, 'to be', verse_6)

check('verse -> seventh day seven swans-a-swimming' function||'(7)',,
      function||'(7)',, 'to be', verse_7)

check('verse -> eighth day eight maids-a-milking' function||'(8)',,
      function||'(8)',, 'to be', verse_8)

check('verse -> ninth day nine ladies dancing' function||'(9)',,
      function||'(9)',, 'to be', verse_9)

check('verse -> tenth day ten lords-a-leaping' function||'(10)',,
      function||'(10)',, 'to be', verse_10)

check('verse -> eleventh day eleven pipers piping' function||'(11)',,
      function||'(11)',, 'to be', verse_11)

check('verse -> twelfth day twelve drummers drumming' function||'(12)',,
      function||'(12)',, 'to be', verse_12)

function = 'Sing'
check('lyrics -> recites first three verses of the song' function||'(1, 3)',,
      function||'(1, 3)',, 'to be', verse_1_to_3)

check('lyrics -> recites three verses from the middle of the song' function||'(4, 6)',,
      function||'(4, 6)',, 'to be', verse_4_to_6)

cmd = 'actual = ' function||'(1, 12)' ; interpret cmd
check('lyrics -> recites the whole song' function||'(1, 12)',,
      function||'(1, 12)', LENGTH(actual), 'to be', verse_1_to_12_length)

