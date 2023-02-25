Create : procedure
  parse arg hours, minutes
return Add(minutes, (hours * 60))

GetTime : procedure
  parse arg clock
return RIGHT(clock % 60, 2, '0') || ':' || RIGHT(clock // 60, 2, '0')

Add : procedure
  parse arg minutes, clock
return ((((clock + minutes) // 1440) + 1440) // 1440)

Subtract : procedure
  parse arg minutes, clock
return Add(-minutes, clock)
