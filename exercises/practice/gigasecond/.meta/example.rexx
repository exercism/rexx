From : procedure
  if ARG() < 1 | ARG() > 2 | ARG(1) == '' then ; return ''
  timeval = ARG(2) ; if ARG(2) == '' then ; timeval = '00:00:00'
  /* DAYLIGHT_SAVING_SECONDS: 0 inactive, else daylight saving offset */
  parse value ARG(1) 1000000000 (TIME('O') / 1000000) 3600 ,
        with dateval GIGASECOND TZOFF DAYLIGHT_SAVING_SECONDS

  base = DATE('T', dateval, 'I')
  newtime = base + TIME('S', timeval, 'N') + GIGASECOND
  timeoff = newtime - base - TZOFF + DAYLIGHT_SAVING_SECONDS
/* YYYY-MM-DD HH:MM:SS */
return DATE('I', newtime, 'T') TIME('N', timeoff, 'T')
