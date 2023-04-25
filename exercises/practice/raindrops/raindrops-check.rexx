/* Unit Test Runner: t-rexx */
context('Checking the Raindrops function')

/* Unit tests */
check('there is no sound for' 'Raindrops(1)',,
      'Raindrops(1)',, 'to be', 1)

check('Pling is the sound for' 'Raindrops(3)',,
      'Raindrops(3)',, 'to be', 'Pling')

check('Plang is the sound for' 'Raindrops(5)',,
      'Raindrops(5)',, 'to be', 'Plang')

check('Plong is the sound for' 'Raindrops(7)',,
      'Raindrops(7)',, 'to be', 'Plong')

check('Pling is the sound for' 'Raindrops(6)',,
      'Raindrops(6)',, 'to be', 'Pling')

check('there is no sound for' 'Raindrops(8)',,
      'Raindrops(8)',, 'to be', 8)

check('Pling is the sound for' 'Raindrops(9)',,
      'Raindrops(9)',, 'to be', 'Pling')

check('Plang is the sound for' 'Raindrops(10)',,
      'Raindrops(10)',, 'to be', 'Plang')

check('Plong is the sound for' 'Raindrops(14)',,
      'Raindrops(14)',, 'to be', 'Plong')

check('PlingPlang is the sound for' 'Raindrops(15)',,
      'Raindrops(15)',, 'to be', 'PlingPlang')

check('PlingPlong is the sound for' 'Raindrops(21)',,
      'Raindrops(21)',, 'to be', 'PlingPlong')

check('Plang is the sound for' 'Raindrops(25)',,
      'Raindrops(25)',, 'to be', 'Plang')

check('Pling is the sound for' 'Raindrops(27)',,
      'Raindrops(27)',, 'to be', 'Pling')

check('PlangPlong is the sound for' 'Raindrops(35)',,
      'Raindrops(35)',, 'to be', 'PlangPlong')

check('Plong is the sound for' 'Raindrops(49)',,
      'Raindrops(49)',, 'to be', 'Plong')

check('there is no sound for' 'Raindrops(52)',,
      'Raindrops(52)',, 'to be', 52)

check('PlingPlangPlong is the sound for' 'Raindrops(105)',,
      'Raindrops(105)',, 'to be', 'PlingPlangPlong')

check('Plang is the sound for' 'Raindrops(3125)',,
      'Raindrops(3125)',, 'to be', 'Plang')

