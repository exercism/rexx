From : procedure
  if ARG() < 1 | ARG() > 2 | ARG(1) == '' then ; return ''
  timeval = ARG(2) ; if ARG(2) == '' then ; timeval = '00:00:00'
  parse value ARG(1) 1000000000 (TIME('O') / 1000000) 0 ,
        with dateval GIGASECOND TZOFF DAYLIGHT_SAVING_SECONDS
  /* Adjust for Daylight Saving Time: 3600 if DST is active else 0 */
  if IsDSTActive() then ; DAYLIGHT_SAVING_SECONDS = 3600
  base = DATE('T', dateval, 'I')
  newtime = base + TIME('S', timeval, 'N') + GIGASECOND
  timeoff = newtime - base - TZOFF + DAYLIGHT_SAVING_SECONDS
/* YYYY-MM-DD HH:MM:SS */
return DATE('I', newtime, 'T') TIME('N', timeoff, 'T')

IsDSTActive : procedure
  /* WARNING: UNIX / Linux specific system command */
  cmd = "date -d '1 Jan' +%z ; date -d '1 Jul' +%z ; date +%z"
  address SYSTEM cmd with OUTPUT FIFO ''
  /* Assume no DST if command invocation error occurs */
  if RC \= 0 then ; return 0
  tzgroup = '' ; do while QUEUED() > 0
    parse pull data with '+' tzoffset
    tzgroup ||= tzoffset || ';'
  end
  parse var tzgroup tz1 ';' tz7 ';' tznow ';'
  if tznow > tz1 | tznow > tz7 then ; return 1
return 0
