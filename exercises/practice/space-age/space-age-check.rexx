/* Unit Test Runner: t-rexx */
context('Checking the AgeOn function')

/* Unit tests */
check('age on Earth' 'AgeOn("Earth", 1000000000)',,
      'AgeOn("Earth", 1000000000)',, 'to be', 31.69)

check('age on Mercury' 'AgeOn("Mercury", 2134835688)',,
      'AgeOn("Mercury", 2134835688)',, 'to be', 280.88)

check('age on Venus' 'AgeOn("Venus", 189839836)',,
      'AgeOn("Venus", 189839836)',, 'to be', 9.78)

check('age on Mars' 'AgeOn("Mars", 2129871239)',,
      'AgeOn("Mars", 2129871239)',, 'to be', 35.88)

check('age on Jupiter' 'AgeOn("Jupiter", 901876382)',,
      'AgeOn("Jupiter", 901876382)',, 'to be', 2.41)

check('age on Saturn' 'AgeOn("Saturn", 2000000000)',,
      'AgeOn("Saturn", 2000000000)',, 'to be', 2.15)

check('age on Uranus' 'AgeOn("Uranus", 1210123456)',,
      'AgeOn("Uranus", 1210123456)',, 'to be', 0.46)

check('age on Neptune' 'AgeOn("Neptune", 1821023456)',,
      'AgeOn("Neptune", 1821023456)',, 'to be', 0.35)

check('invalid planet causes error' 'AgeOn("Pluto", 680804807)',,
      'AgeOn("Pluto", 680804807)',, 'to be', -1)

