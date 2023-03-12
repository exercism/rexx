Sing : procedure
  if ARG() \= 2 | \DATATYPE(ARG(1), 'N') ,
                | \DATATYPE(ARG(2), 'N') then ; return ''
  parse arg from, to
  if from < to then ; return ''
return SingFromTo(from, to)

SingFromTo : procedure
  parse arg from, to
  if from < to then ; return ''
  if from == to then ; return Verse(from) || SingFromTo(from - 1, to)
return Verse(from) || "0A"X || SingFromTo(from - 1, to)

Verse : procedure
  if ARG() \= 1 | \DATATYPE(ARG(1), 'N') then ; return ''
  parse arg N ; select
    when N < 0 | N > 99 then ; verse = ''
    when N == 0 then ; verse = ZeroBottles()
    when N == 1 then ; verse = OneBottles()
    when N == 2 then ; verse = TwoBottles()
    otherwise verse = N_Bottles(N)
  end
return verse

ZeroBottles : return ,
  'No more bottles of beer on the wall, no more bottles of beer.' || "0A"X || ,
  'Go to the store and buy some more, 99 bottles of beer on the wall.' || "0A"X

OneBottles : return ,
  '1 bottle of beer on the wall, 1 bottle of beer.' || "0A"X || ,
  'Take it down and pass it around, no more bottles of beer on the wall.' || "0A"X

TwoBottles : return ,
  '2 bottles of beer on the wall, 2 bottles of beer.' || "0A"X || ,
  'Take one down and pass it around, 1 bottle of beer on the wall.' || "0A"X

N_Bottles : parse arg N ; return ,
  N 'bottles of beer on the wall,' N 'bottles of beer.' || "0A"X || ,
  'Take one down and pass it around,' N 'bottles of beer on the wall.' || "0A"X
