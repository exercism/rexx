/* Unit Test Runner: t-rexx */
context('Checking the Raindrops function')

/* Unit tests */
check('there is no sound for' 'Raindrops(1)',,
      'Raindrops(1)',, '=', 1)

check('Pling is the sound for' 'Raindrops(3)',,
      'Raindrops(3)',, '=', 'Pling')

check('Plang is the sound for' 'Raindrops(5)',,
      'Raindrops(5)',, '=', 'Plang')

check('Plong is the sound for' 'Raindrops(7)',,
      'Raindrops(7)',, '=', 'Plong')

check('Pling is the sound for' 'Raindrops(6)',,
      'Raindrops(6)',, '=', 'Pling')

check('there is no sound for' 'Raindrops(8)',,
      'Raindrops(8)',, '=', 8)

check('Pling is the sound for' 'Raindrops(9)',,
      'Raindrops(9)',, '=', 'Pling')

check('Plang is the sound for' 'Raindrops(10)',,
      'Raindrops(10)',, '=', 'Plang')

check('Plong is the sound for' 'Raindrops(14)',,
      'Raindrops(14)',, '=', 'Plong')

check('PlingPlang is the sound for' 'Raindrops(15)',,
      'Raindrops(15)',, '=', 'PlingPlang')

check('PlingPlong is the sound for' 'Raindrops(21)',,
      'Raindrops(21)',, '=', 'PlingPlong')

check('Plang is the sound for' 'Raindrops(25)',,
      'Raindrops(25)',, '=', 'Plang')

check('Pling is the sound for' 'Raindrops(27)',,
      'Raindrops(27)',, '=', 'Pling')

check('PlangPlong is the sound for' 'Raindrops(35)',,
      'Raindrops(35)',, '=', 'PlangPlong')

check('Plong is the sound for' 'Raindrops(49)',,
      'Raindrops(49)',, '=', 'Plong')

check('there is no sound for' 'Raindrops(52)',,
      'Raindrops(52)',, '=', 52)

check('PlingPlangPlong is the sound for' 'Raindrops(105)',,
      'Raindrops(105)',, '=', 'PlingPlangPlong')

check('Plang is the sound for' 'Raindrops(3125)',,
      'Raindrops(3125)',, '=', 'Plang')

