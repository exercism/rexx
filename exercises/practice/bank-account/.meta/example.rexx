Create : procedure
return -1

Open : procedure
  parse arg balance
  if balance > -1 then ; return balance
return 0

Close : procedure
  parse arg balance
  if balance < 0 then ; return balance
return -1

Deposit : procedure
  parse arg amount, balance
  if balance < 0 | amount < 0 then ; return balance
return balance + amount

Withdraw : procedure
  parse arg amount, balance
  if balance < 0 | amount < 0 | (balance - amount < 0) ; then return balance
return balance - amount

Balance : procedure
  parse arg balance
return balance
