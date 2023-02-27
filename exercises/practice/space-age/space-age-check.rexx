/* Unit Test Runner: t-rexx */
function = 'AgeOn'
context('Checking the' function 'function')

/* Unit tests */
check('age on Earth' function||'("Earth", 1000000000)',,
      function||'("Earth", 1000000000)',, 'to be', 31.69)
check('age on Mercury' function||'("Mercury", 2134835688)',,
      function||'("Mercury", 2134835688)',, 'to be', 280.88)
check('age on Venus' function||'("Venus", 189839836)',,
      function||'("Venus", 189839836)',, 'to be', 9.78)
check('age on Mars' function||'("Mars", 2129871239)',,
      function||'("Mars", 2129871239)',, 'to be', 35.88)
check('age on Jupiter' function||'("Jupiter", 901876382)',,
      function||'("Jupiter", 901876382)',, 'to be', 2.41)
check('age on Saturn' function||'("Saturn", 2000000000)',,
      function||'("Saturn", 2000000000)',, 'to be', 2.15)
check('age on Uranus' function||'("Uranus", 1210123456)',,
      function||'("Uranus", 1210123456)',, 'to be', 0.46)
check('age on Neptune' function||'("Neptune", 1821023456)',,
      function||'("Neptune", 1821023456)',, 'to be', 0.35)
check('invalid planet causes error' function||'("Pluto", 680804807)',,
      function||'("Pluto", 680804807)',, 'to be', -1)

