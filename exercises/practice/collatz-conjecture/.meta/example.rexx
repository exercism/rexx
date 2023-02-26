ComputeSteps : procedure
  parse arg number
  if number == 1 then ; return 0
  if number // 2 == 0 then ; return 1 + ComputeSteps(number % 2)
return 1 + ComputeSteps(number * 3 + 1)

Steps : procedure
  if ARG() \= 1 | \DATATYPE(ARG(1), 'N') then ; return -1
  parse arg number
  if number < 1 then ; return -1
return ComputeSteps(number)
