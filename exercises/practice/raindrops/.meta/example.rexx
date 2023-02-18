Raindrops : procedure
  parse arg n raindrops
  if n < 1 | ARG() \= 1 then ; return -1
  if n // 3 == 0 then ; raindrops = 'Pling'
  if n // 5 == 0 then ; raindrops = raindrops || 'Plang'
  if n // 7 == 0 then ; raindrops = raindrops || 'Plong'
  if raindrops == '' then ; return n
return raindrops
