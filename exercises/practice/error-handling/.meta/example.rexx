HandleErrorUsingReturnCode : procedure
  if ARG() \= 1 | ARG(1) == '' then ; return -1
return ARG(1)
