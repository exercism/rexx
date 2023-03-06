/* Unit Test Runner: t-rexx */
function = 'Convert'
context('Checking the' function 'function')

/* Unit tests */
plaintext = 'a'
ciphertext = 'a'
check('rotate a by 0, same output as input' function||'('||'plaintext'||', 0)',,
      function||'('||'plaintext'||', 0)',, 'to be', ciphertext)

plaintext = 'a'
ciphertext = 'b'
check('rotate a by 1' function||'('||'plaintext'||', 1)',,
      function||'('||'plaintext'||', 1)',, 'to be', ciphertext)

plaintext = 'a'
ciphertext = 'a'
check('rotate a by 26, same output as input' function||'('||'plaintext'||', 26)',,
      function||'('||'plaintext'||', 26)',, 'to be', ciphertext)

plaintext = 'm'
ciphertext = 'z'
check('rotate m by 13' function||'('||'plaintext'||', 13)',,
      function||'('||'plaintext'||', 13)',, 'to be', ciphertext)

plaintext = 'n'
ciphertext = 'a'
check('rotate n by 13 with wrap around alphabet' function||'('||'plaintext'||', 13)',,
      function||'('||'plaintext'||', 13)',, 'to be', ciphertext)

plaintext = 'OMG'
ciphertext = 'TRL'
check('rotate capital letters' function||'('||'plaintext'||', 5)',,
      function||'('||'plaintext'||', 5)',, 'to be', ciphertext)

plaintext = 'O M G'
ciphertext = 'T R L'
check('rotate spaces' function||'('||'plaintext'||', 5)',,
      function||'('||'plaintext'||', 5)',, 'to be', ciphertext)

plaintext = 'Testing 1 2 3 testing'
ciphertext = 'Xiwxmrk 1 2 3 xiwxmrk'
check('rotate numbers' function||'('||'plaintext'||', 4)',,
      function||'('||'plaintext'||', 4)',, 'to be', ciphertext)

plaintext =  "Let''''s eat',' Grandma!"
ciphertext = "Gzo''''n zvo',' Bmviyhv!"
check('rotate punctuation' function||'('||'plaintext'||', 21)',,
      function||'('||'plaintext'||', 21)',, 'to be', ciphertext)

plaintext = 'The quick brown fox jumps over the lazy dog.'
ciphertext = 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'
check('rotate all letters' function||'('||'plaintext'||', 13)',,
      function||'('||'plaintext'||', 13)',, 'to be', ciphertext)

