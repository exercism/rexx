Roman : procedure
  if ARG() \= 1 | \DATATYPE(ARG(1), 'N') then ; return ''
  parse arg number
  if number < 1 | number > 3999 then ; return ''
  parse value RIGHT(number, 4, '0') with m +1 c +1 x +1 i +1
  roman = WORD('. M MM MMM', m + 1) || ,
          WORD('. C CC CCC CD D DC DCC DCCC CM', c + 1) || ,
          WORD('. X XX XXX XL L LX LXX LXXX XC', x + 1) || ,
          WORD('. I II III IV V VI VII VIII IX', i + 1)
return CHANGESTR('.', roman, '')
