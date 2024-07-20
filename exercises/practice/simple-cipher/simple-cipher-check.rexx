/* Unit Test Runner: t-rexx */
context('Checking the Simple Cipher functions')

/* Test Variables */
key_1_length = LENGTH(GenerateKey())

key_2 = GenerateKey()
key_2_islowercase = VERIFY(key_2, 'abcdefghijklmnopqrstuvwxyz', 'N') > 0

key_3_4 = GenerateKey()
plaintext_3_4 = 'aaaaaaaaaa'
encoded_3_4 = Encode(key_3_4, plaintext_3_4)
decoded_3_4 = Decode(key_3_4, encoded_3_4)

key_5 = GenerateKey()
plaintext_5 = 'zaaohgkaha'

key_6 = 'abcdefghij'
plaintext_6 = 'aaaaaaaaaa'
expected_6 = 'abcdefghij'

key_7 = 'abcdefghij'
plaintext_7 = 'abcdefghij'
expected_7 = 'aaaaaaaaaa'

key_8 = 'abcdefghij'
plaintext_8 = 'abcdefghij'
expected_8 = 'abcdefghij'

key_9 = 'iamapandabear'
plaintext_9 = 'iamapandabear'
expected_9 = 'qayaeaagaciai'

key_10 = 'abcdefghij'
plaintext_10 = 'zzzzzzzzzz'
expected_10 = 'zabcdefghi'

key_11 = 'abcdefghij'
plaintext_11 = 'zabcdefghi'
expected_11 = 'zzzzzzzzzz'

key_12 = 'abc'
plaintext_12 = 'iamapandabear'
expected_12 = 'iboaqcnecbfcr'

key_13 = 'abc'
plaintext_13 = 'iboaqcnecbfcr'
expected_13 = 'iamapandabear'

/* Unit tests */
check('Can generate a random key' 'GenerateKey()',,
      'GenerateKey()', key_1_length, '=', 100)

check('Random key cipher -> Key is made only of lowercase letters' 'GenerateKey()',,
      'GenerateKey()', key_2_islowercase, '=', 0)

check('Random key cipher -> Can encode' 'Encode(key_3_4, plaintext_3_4)',,
      'Encode(key_3_4, plaintext_3_4)',, '=', encoded_3_4)

check('Random key cipher -> Can decode' 'Decode(key_3_4, encoded_3_4)',,
      'Decode(key_3_4, encoded_3_4)',, '=', plaintext_3_4)

check('Random key cipher -> Is reversible. i.e.,  decoding an encoded result yields original plaintext' 'Decode(key_5, Encode(key_5, plaintext_5))',,
      'Decode(key_5, Encode(key_5, plaintext_5))',, '=', plaintext_5)

check('Substitution cipher -> Can encode' 'Encode(key_6, plaintext_6)',,
      'Encode(key_6, plaintext_6)',, '=', expected_6)

check('Substitution cipher -> Can decode' 'Decode(key_7, plaintext_7)',,
      'Decode(key_7, plaintext_7)',, '=', expected_7)

check('Substitution cipher -> Is reversible. i.e.,  decoding an encoded result yields original plaintext' 'Decode(key_8, Encode(key_8, plaintext_8))',,
      'Decode(key_8, Encode(key_8, plaintext_8))',, '=', expected_8)

check('Substitution cipher -> Can double shift encode' 'Encode(key_9, plaintext_9)',,
      'Encode(key_9, plaintext_9)',, '=', expected_9)

check('Substitution cipher -> Can wrap on encode' 'Encode(key_10, plaintext_10)',,
      'Encode(key_10, plaintext_10)',, '=', expected_10)

check('Substitution cipher -> Can wrap on decode' 'Decode(key_11, plaintext_11)',,
      'Decode(key_11, plaintext_11)',, '=', expected_11)

check('Substitution cipher -> Can encode messages longer than the key' 'Encode(key_12, plaintext_12)',,
      'Encode(key_12, plaintext_12)',, '=', expected_12)

check('Substitution cipher -> Can decode messages longer than the key' 'Decode(key_13, plaintext_13)',,
      'Decode(key_13, plaintext_13)',, '=', expected_13)

