Sing : procedure
  parse arg from, to
  parse value DATATYPE(from, 'N') DATATYPE(to, 'N') ,
        with isFromNumeric isToNumeric
  if \isFromNumeric | from < 1 | from > 12 then ; return ''
  if \isToNumeric | to < 1 | to > 12 then ; to = from
  if from > to then ; return ''
  if from == to then ; return Verses(from)
  versesSung = '' ; stop = to
  do n = from to stop ; versesSung ||= Verses(n) ; end
return versesSung

Verses : procedure
  parse arg nthDay
  parse value (13 - nthDay) 27 GetVerses() ,
        with nthDay verseLen verses
  versesSung = 'On the' WORD(GetNthDays(), nthDay) ,
               'day of Christmas my true love gave to me: '
  verses = SUBSTR(verses, verseLen * nthDay - (verseLen - 1))
  do while verses \= ''
    parse var verses verse +(verseLen) verses
    versesSung ||= STRIP(verse) '' ; nthDay += 1
  end
return STRIP(versesSung) || "0A"X

GetVerses : return ,
  'twelve Drummers Drumming,  ' || ,
  'eleven Pipers Piping,      ' || ,
  'ten Lords-a-Leaping,       ' || ,
  'nine Ladies Dancing,       ' || ,
  'eight Maids-a-Milking,     ' || ,
  'seven Swans-a-Swimming,    ' || ,
  'six Geese-a-Laying,        ' || ,
  'five Gold Rings,           ' || ,
  'four Calling Birds,        ' || ,
  'three French Hens,         ' || ,
  'two Turtle Doves, and      ' || ,
  'a Partridge in a Pear Tree.'

GetNthdays : return ,
  'twelfth eleventh tenth ninth eighth seventh' ,
  'sixth fifth fourth third second first'
