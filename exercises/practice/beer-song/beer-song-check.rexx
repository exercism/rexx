/* Unit Test Runner: t-rexx */
context('Checking the Verse and Sing functions')

/* Test Variables */
verse_0 = ,
  'No more bottles of beer on the wall, no more bottles of beer.' || "0A"X || ,
  'Go to the store and buy some more, 99 bottles of beer on the wall.' || "0A"X

verse_1 = ,
  '1 bottle of beer on the wall, 1 bottle of beer.' || "0A"X || ,
  'Take it down and pass it around, no more bottles of beer on the wall.' || "0A"X

verse_2 = ,
  '2 bottles of beer on the wall, 2 bottles of beer.' || "0A"X || ,
  'Take one down and pass it around, 1 bottle of beer on the wall.' || "0A"X

verse_3 = ,
  '3 bottles of beer on the wall, 3 bottles of beer.' || "0A"X || ,
  'Take one down and pass it around, 3 bottles of beer on the wall.' || "0A"X

verse_99 = ,
  '99 bottles of beer on the wall, 99 bottles of beer.' || "0A"X || ,
  'Take one down and pass it around, 99 bottles of beer on the wall.' || "0A"X

verse_1_to_0 = ,
  '1 bottle of beer on the wall, 1 bottle of beer.' || "0A"X || ,
  'Take it down and pass it around, no more bottles of beer on the wall.' || "0A"X ,
  || "0A"X || ,
  'No more bottles of beer on the wall, no more bottles of beer.' || "0A"X || ,
  'Go to the store and buy some more, 99 bottles of beer on the wall.' || "0A"X

verse_99_to_97 = ,
  '99 bottles of beer on the wall, 99 bottles of beer.' || "0A"X || ,
  'Take one down and pass it around, 99 bottles of beer on the wall.' || "0A"X ,
  || "0A"X || ,
  '98 bottles of beer on the wall, 98 bottles of beer.' || "0A"X || ,
  'Take one down and pass it around, 98 bottles of beer on the wall.' || "0A"X ,
  || "0A"X || ,
  '97 bottles of beer on the wall, 97 bottles of beer.' || "0A"X || ,
  'Take one down and pass it around, 97 bottles of beer on the wall.' || "0A"X

verse_99_to_0_length = 11885

/* Unit tests */
check('verse -> single verse -> first generic verse' 'Verse(3)',,
      'Verse(3)',, 'to be', verse_3)

check('verse -> single verse -> last generic verse' 'Verse(99)',,
      'Verse(99)',, 'to be', verse_99)

check('verse -> single verse -> verse with 2 bottles' 'Verse(2)',,
      'Verse(2)',, 'to be', verse_2)

check('verse -> single verse -> verse with 1 bottle' 'Verse(1)',,
      'Verse(1)',, 'to be', verse_1)

check('verse -> single verse -> verse with 0 bottles' 'Verse(0)',,
      'Verse(0)',, 'to be', verse_0)

check('lyrics -> multiple verses -> first two verses' 'Sing(1, 0)',,
      'Sing(1, 0)',, 'to be', verse_1_to_0)

check('lyrics -> multiple verses -> last three verses' 'Sing(99, 97)',,
      'Sing(99, 97)',, 'to be', verse_99_to_97)

cmd = 'actual = Sing(99, 0)' ; interpret cmd
check('lyrics -> multiple verses -> all verses' 'Sing(99, 0)',,
      'Sing(99, 0)', LENGTH(actual), 'to be', verse_99_to_0_length)

