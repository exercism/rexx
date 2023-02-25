/* Unit Test Runner: t-rexx */
context('Checking the Create, Add, Subtract, and GetTime functions')

/* Unit tests */
check('on the hour' ,,
      GetTime||'('Create(8, 0)')',, 'to be', '08:00')

check('past the hour' ,,
      GetTime||'('Create(11, 9)')',, 'to be', '11:09')

check('midnight is zero hours' ,,
      GetTime||'('Create(24, 0)')',, 'to be', '00:00')

check('hour rolls over' ,,
      GetTime||'('Create(25, 0)')',, 'to be', '01:00')

check('hour rolls over continuously' ,,
      GetTime||'('Create(100, 0)')',, 'to be', '04:00')

check('sixty minutes is next hour' ,,
      GetTime||'('Create(1, 60)')',, 'to be', '02:00')

check('minutes roll over' ,,
      GetTime||'('Create(0, 160)')',, 'to be', '02:40')

check('minutes roll over continuously' ,,
      GetTime||'('Create(0, 1723)')',, 'to be', '04:43')

check('hour and minutes roll over' ,,
      GetTime||'('Create(25, 160)')',, 'to be', '03:40')

check('hour and minutes roll over continuously' ,,
      GetTime||'('Create(201, 3001)')',, 'to be', '11:01')

check('hour and minutes roll over to exactly midnight' ,,
      GetTime||'('Create(72, 8640)')',, 'to be', '00:00')

check('negative hour' ,,
      GetTime||'('Create(-1, 15)')',, 'to be', '23:15')

check('negative hour rolls over' ,,
      GetTime||'('Create(-25, 0)')',, 'to be', '23:00')

check('negative hour rolls over continuously' ,,
      GetTime||'('Create(-91, 0)')',, 'to be', '05:00')

check('negative minutes' ,,
      GetTime||'('Create(1, -40)')',, 'to be', '00:20')

check('negative minutes roll over' ,,
      GetTime||'('Create(1, -160)')',, 'to be', '22:20')

check('negative minutes roll over continuously' ,,
      GetTime||'('Create(1, -4820)')',, 'to be', '16:40')

check('negative sixty minutes is previous hour' ,,
      GetTime||'('Create(2, -60)')',, 'to be', '01:00')

check('negative hour and minutes both roll over' ,,
      GetTime||'('Create(-25, -160)')',, 'to be', '20:20')

check('negative hour and minutes both roll over continuously' ,,
      GetTime||'('Create(-121, -5810)')',, 'to be', '22:10')

check('Add minutes' ,,
      GetTime||'('Add(3, Create(10, 0))')',, 'to be', '10:03')

check('Add no minutes' ,,
      GetTime||'('Add(0, Create(6, 41))')',, 'to be', '06:41')

check('Add to next hour' ,,
      GetTime||'('Add(40, Create(0, 45))')',, 'to be', '01:25')

check('Add more than one hour' ,,
      GetTime||'('Add(61, Create(10, 0))')',, 'to be', '11:01')

check('Add more than two hours with carry' ,,
      GetTime||'('Add(160, Create(0, 45))')',, 'to be', '03:25')

check('Add across midnight' ,,
      GetTime||'('Add(2, Create(23, 59))')',, 'to be', '00:01')

check('Add more than one day 1500 min  25 hrs' ,,
      GetTime||'('Add(1500, Create(5, 32))')',, 'to be', '06:32')

check('Add more than two days' ,,
      GetTime||'('Add(3500, Create(1, 1))')',, 'to be', '11:21')

check('Subtract minutes' ,,
      GetTime||'('Subtract(3, Create(10, 3))')',, 'to be', '10:00')

check('Subtract to previous hour' ,,
      GetTime||'('Subtract(30, Create(10, 3))')',, 'to be', '09:33')

check('Subtract more than an hour' ,,
      GetTime||'('Subtract(70, Create(10, 3))')',, 'to be', '08:53')

check('Subtract across midnight' ,,
      GetTime||'('Subtract(4, Create(0, 3))')',, 'to be', '23:59')

check('Subtract more than two hours' ,,
      GetTime||'('Subtract(160, Create(0, 0))')',, 'to be', '21:20')

check('Subtract more than two hours with borrow' ,,
      GetTime||'('Subtract(160, Create(6, 15))')',, 'to be', '03:35')

check('Subtract more than one day 1500 min  25 hrs' ,,
      GetTime||'('Subtract(1500, Create(5, 32))')',, 'to be', '04:32')

check('Subtract more than two days' ,,
      GetTime||'('Subtract(3000, Create(2, 20))')',, 'to be', '00:20')

check('clocks with same time' ,,
      Create||'(15, 37)',, 'to be', Create(15, 37))

check('clocks a minute apart' ,,
      Create||'(15, 36)',, 'not to be', Create(15, 37))

check('clocks an hour apart' ,,
      Create||'(14, 37)',, 'not to be', Create(15, 37))

check('clocks with hour overflow' ,,
      Create||'(10, 37)',, 'to be', Create(34, 37))

check('clocks with hour overflow by several days' ,,
      Create||'(3, 11)',, 'to be', Create(99, 11))

check('clocks with negative hour' ,,
      Create||'(22, 40)',, 'to be', Create(-2, 40))

check('clocks with negative hour that wraps' ,,
      Create||'(17, 3)',, 'to be', Create(-31, 3))

check('clocks with negative hour that wraps multiple times' ,,
      Create||'(13, 49)',, 'to be', Create(-83, 49))

check('clocks with minute overflow' ,,
      Create||'(0, 1)',, 'to be', Create(0, 1441))

check('clocks with minute overflow by several days' ,,
      Create||'(2, 2)',, 'to be', Create(2, 4322))

check('clocks with negative minute' ,,
      Create||'(2, 40)',, 'to be', Create(3, -20))

check('clocks with negative minute that wraps' ,,
      Create||'(4, 10)',, 'to be', Create(5, -1490))

check('clocks with negative minute that wraps multiple times' ,,
      Create||'(6, 15)',, 'to be', Create(6, -4305))

check('clocks with negative hours and minutes' ,,
      Create||'(7, 32)',, 'to be', Create(-12, -268))

check('clocks with negative hours and minutes that wrap' ,,
      Create||'(18, 7)',, 'to be', Create(-54, -11513))

check('full clock and zeroed clock' ,,
      Create||'(24, 0)',, 'to be', Create(0, 0))

