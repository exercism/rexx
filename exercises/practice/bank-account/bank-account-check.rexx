/* Unit Test Runner: t-rexx */
context('Checking the Create, Open, Close, Deposit, Withdraw, and Balance functions')

/* Unit tests */
account = Create()
check('Create a (dormant) new bank account' ,,
      Balance||'('account')',, 'to be', -1)

account = Close(account)
check('Close a dormant bank account - no account status change' ,,
      Balance||'('account')',, 'to be', -1)

account = Open(account)
check('Open a dormant bank account - dormant account now open' ,,
      Balance||'('account')',, 'to be', 0)

account = Open(account)
check('Open an already open bank account - no account status change' ,,
      Balance||'('account')',, 'to be', 0)

account = Close(account)
check('Close an already open bank account - account becomes dormant' ,,
      Balance||'('account')',, 'to be', -1)

account = Deposit(100, account)
check('Deposit money into a dormant bank account - deposit not accepted' ,,
      Balance||'('account')',, 'to be', -1)

account = Withdraw(50, account)
check('Withdraw money from a dormant bank account - withdrawal unsuccessful' ,,
      Balance||'('account')',, 'to be', -1)

account = Withdraw(350, account)
check('Attempt overdraw from a dormant bank account - withdrawal unsuccessful' ,,
      Balance||'('account')',, 'to be', -1)

account = Withdraw(-50, account)
check('Withdraw negative amount from a dormant bank account - withdrawal' ,
      'unsuccessful' ,,
      Balance||'('account')',, 'to be', -1)

account = Deposit(-50, account)
check('Deposit negative amount into a dormant bank account - deposit' ,
      'unsuccessful' ,,
      Balance||'('account')',, 'to be', -1)

account = Open(account)
check('Open a dormant bank account - dormant account now open' ,,
      Balance||'('account')',, 'to be', 0)

account = Deposit(100, account)
check('Deposit money into an open bank account - deposit accepted' ,,
      Balance||'('account')',, 'to be', 100)

account = Deposit(150, account)
check('Deposit more money into an open bank account - deposit accepted' ,,
      Balance||'('account')',, 'to be', 250)

account = Withdraw(50, account)
check('Withdraw money from an open bank account - withdrawal successful' ,,
      Balance||'('account')',, 'to be', 200)

account = Withdraw(350, account)
check('Attempt overdraw from an open bank account - withdrawal unsuccessful,' ,
      'no account status change' ,,
      Balance||'('account')',, 'to be', 200)

account = Withdraw(-50, account)
check('Withdraw negative amount from an open bank account - withdrawal' ,
      'unsuccessful, no account status change' ,,
      Balance||'('account')',, 'to be', 200)

account = Deposit(-50, account)
check('Deposit negative amount into an open bank account - deposit' ,
      'unsuccessful, no account status change' ,,
      Balance||'('account')',, 'to be', 200)

