/* Unit Test Runner: t-rexx */
context('Checking the Simple Cipher functions')

/* Unit tests */
function = 'GenerateKey'
key = GenerateKey() ; keyLength = LENGTH(key)
check('Can generate a random key' function||'()',,
      function||'()', keyLength, 'to be', 100)

key = GenerateKey() ; isLowercase = VERIFY(key, 'abcdefghijklmnopqrstuvwxyz', 'N') > 0
check('Random key cipher -> Key is made only of lowercase letters' function||'()',,
      function||'()', isLowercase, 'to be', 0)

key = GenerateKey()
plaintext = 'aaaaaaaaaa'
encoded = Encode(key, plaintext)
decoded = Decode(key, encoded)

function = 'Encode'
check('Random key cipher -> Can encode' function||'(key, plaintext)',,
      function||'(key, plaintext)',, 'to be', encoded)

function = 'Decode'
check('Random key cipher -> Can decode' function||'(key, encoded)',,
      function||'(key, encoded)',, 'to be', plaintext)

key = GenerateKey()
plaintext = 'zaaohgkaha'
check('Random key cipher -> Is reversible. i.e.,  decoding an encoded result yields original plaintext' 'Decode(key, Encode(key, plaintext))',,
      'Decode(key, Encode(key, plaintext))',, 'to be', plaintext)

key = 'abcdefghij'
plaintext = 'aaaaaaaaaa'
expected = 'abcdefghij'
function = 'Encode'
check('Substitution cipher -> Can encode' function||'(key, plaintext)',,
      function||'(key, plaintext)',, 'to be', expected)

key = 'abcdefghij'
plaintext = 'abcdefghij'
expected = 'aaaaaaaaaa'
function = 'Decode'
check('Substitution cipher -> Can decode' function||'(key, plaintext)',,
      function||'(key, plaintext)',, 'to be', expected)

key = 'abcdefghij'
plaintext = 'abcdefghij'
expected = 'abcdefghij'
check('Substitution cipher -> Is reversible. i.e.,  decoding an encoded result yields original plaintext' 'Decode(key, Encode(key, plaintext))',,
      'Decode(key, Encode(key, plaintext))',, 'to be', expected)

key = 'iamapandabear'
plaintext = 'iamapandabear'
expected = 'qayaeaagaciai'
function = 'Encode'
check('Substitution cipher -> Can double shift encode' function||'(key, plaintext)',,
      function||'(key, plaintext)',, 'to be', expected)

key = 'abcdefghij'
plaintext = 'zzzzzzzzzz'
expected = 'zabcdefghi'
function = 'Encode'
check('Substitution cipher -> Can wrap on encode' function||'(key, plaintext)',,
      function||'(key, plaintext)',, 'to be', expected)

key = 'abcdefghij'
plaintext = 'zabcdefghi'
expected = 'zzzzzzzzzz'
function = 'Decode'
check('Substitution cipher -> Can wrap on decode' function||'(key, plaintext)',,
      function||'(key, plaintext)',, 'to be', expected)

key = 'abc'
plaintext = 'iamapandabear'
expected = 'iboaqcnecbfcr'
function = 'Encode'
check('Substitution cipher -> Can encode messages longer than the key' function||'(key, plaintext)',,
      function||'(key, plaintext)',, 'to be', expected)

key = 'abc'
plaintext = 'iboaqcnecbfcr'
expected = 'iamapandabear'
function = 'Decode'
check('Substitution cipher -> Can decode messages longer than the key' function||'(key, plaintext)',,
      function||'(key, plaintext)',, 'to be', expected)

