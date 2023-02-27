AgeOn : procedure
  orbitmap = 'MERCURY:0.2408467 VENUS:0.61519726 EARTH:1.0 MARS:1.8808158' ,
             'JUPITER:11.862615 SATURN:29.447498 URANUS:84.016846' ,
             'NEPTUNE:164.79132'
  if ARG() \= 2 | ARG(1) == '' | \DATATYPE(ARG(2), 'N') then ; return -1
  parse upper arg planet, seconds
  pos = POS(planet, orbitmap) ; if pos < 1 then ; return -1
  parse value SUBSTR(orbitmap, pos) with . ':' period .
return FORMAT(seconds / 31557600 / period,, 2)
