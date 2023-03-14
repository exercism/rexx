Recite : procedure
  parse arg from, to
  if to == '' then ; to = from
  parse value DATATYPE(from, 'N') DATATYPE(to, 'N') ,
        with isFromNumeric isToNumeric
  if \isFromNumeric | from < 1 | from > 12 then ; return ''
  if \isFromNumeric | to < 1 | to > 12 then ; return ''
  if from > to then ; return ''
  if from == to then ; return VersesFrom(from)
  versesRecited = '' ; stop = to
  do n = from to stop ; versesRecited ||= VersesFrom(n) || "0A"X ; end
return versesRecited

VersesFrom : procedure
  parse value GetNouns() with records nounLength ';' nouns
  parse value GetVerbs() with .       verbLength ';' verbs
  parse value (records - (ARG(1) - 2)) '' with nth embedded
  if nth > 1 then do
    nouns = SUBSTR(nouns, nounLength * nth - (nounLength - 1))
    verbs = SUBSTR(verbs, verbLength * nth - (verbLength - 1))
    do while nouns \= ''
      parse var nouns noun +(nounLength) nouns
      parse var verbs verb +(verbLength) verbs
      embedded ||= STRIP(noun) STRIP(verb) ''
    end
  end
return SPACE('This is' embedded 'the house that Jack built.') || "0A"X

GetNouns : return ,
  '12 36;' || ,
  '------------------------------------' || ,
  'the horse and the hound and the horn' || ,
  'the farmer sowing his corn          ' || ,
  'the rooster that crowed in the morn ' || ,
  'the priest all shaven and shorn     ' || ,
  'the man all tattered and torn       ' || ,
  'the maiden all forlorn              ' || ,
  'the cow with the crumpled horn      ' || ,
  'the dog                             ' || ,
  'the cat                             ' || ,
  'the rat                             ' || ,
  'the malt                            '

GetVerbs : return ,
  '12 16;' || ,
  '----------------' || ,
  'that belonged to' || ,
  'that kept       ' || ,
  'that woke       ' || ,
  'that married    ' || ,
  'that kissed     ' || ,
  'that milked     ' || ,
  'that tossed     ' || ,
  'that worried    ' || ,
  'that killed     ' || ,
  'that ate        ' || ,
  'that lay in     '
