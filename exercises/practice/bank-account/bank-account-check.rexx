/* Unit Test Runner: t-rexx */
context('Checking the Create, Open, Close, Deposit, Withdraw, and Balance functions')

/* Test Variables */
account_0 = Create()
account_1 = Close(account_0)
account_2 = Open(account_1)
account_3 = Open(account_2)
account_4 = Close(account_3)
account_5 = Deposit(100, account_4)
account_6 = Withdraw(50, account_5)
account_7 = Withdraw(350, account_6)
account_8 = Withdraw(-50, account_7)
account_9 = Deposit(-50, account_8)
account_10 = Open(account_9)
account_11 = Deposit(100, account_10)
account_12 = Deposit(150, account_11)
account_13 = Withdraw(50, account_12)
account_14 = Withdraw(350, account_13)
account_15 = Withdraw(-50, account_14)
account_16 = Deposit(-50, account_15)

/* Unit tests */
check('Create a (dormant) new bank account' 'Balance(account_0)',,
      'Balance(account_0)',, '=', -1)

check('Close a dormant bank account - no account status change' 'Balance(account_1)',,
      'Balance(account_1)',, '=', -1)

check('Open a dormant bank account - dormant account now open' 'Balance(account_2)',,
      'Balance(account_2)',, '=', 0)

check('Open an already open bank account - no account status change' 'Balance(account_3)',,
      'Balance(account_3)',, '=', 0)

check('Close an already open bank account - account becomes dormant' 'Balance(account_4)',,
      'Balance(account_4)',, '=', -1)

check('Deposit money into a dormant bank account - deposit not accepted' 'Balance(account_5)',,
      'Balance(account_5)',, '=', -1)

check('Withdraw money from a dormant bank account - withdrawal unsuccessful' 'Balance(account_6)',,
      'Balance(account_6)',, '=', -1)

check('Attempt overdraw from a dormant bank account - withdrawal unsuccessful' 'Balance(account_7)',,
      'Balance(account_7)',, '=', -1)

check('Withdraw negative amount from a dormant bank account - withdrawal unsuccessful' 'Balance(account_8)',,
      'Balance(account_8)',, '=', -1)

check('Deposit negative amount into a dormant bank account - deposit unsuccessful' 'Balance(account_9)',,
      'Balance(account_9)',, '=', -1)

check('Open a dormant bank account - dormant account now open' 'Balance(account_10)',,
      'Balance(account_10)',, '=', 0)

check('Deposit money into an open bank account - deposit accepted' 'Balance(account_11)',,
      'Balance(account_11)',, '=', 100)

check('Deposit more money into an open bank account - deposit accepted' 'Balance(account_12)',,
      'Balance(account_12)',, '=', 250)

check('Withdraw money from an open bank account - withdrawal successful' 'Balance(account_13)',,
      'Balance(account_13)',, '=', 200)

check('Attempt overdraw from an open bank account - withdrawal unsuccessful, no account status change' 'Balance(account_14)',,
      'Balance(account_14)',, '=', 200)

check('Withdraw negative amount from an open bank account - withdrawal unsuccessful, no account status change' 'Balance(account_15)',,
      'Balance(account_15)',, '=', 200)

check('Deposit negative amount into an open bank account - deposit unsuccessful, no account status change' 'Balance(account_16)',,
      'Balance(account_16)',, '=', 200)

