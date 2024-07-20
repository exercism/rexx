/* Unit Test Runner: t-rexx */
context('Checking the FindAnagrams function')

/* Unit tests */
check('no matches' 'FindAnagrams("diaper", "hello world zombies pants")',,
      'FindAnagrams("diaper", "hello world zombies pants")',, '=', '')

check('detects two anagrams' 'FindAnagrams("solemn", "lemons cherry melons")',,
      'FindAnagrams("solemn", "lemons cherry melons")',, '=', 'lemons melons')

check('does not detect anagram subsets' 'FindAnagrams("good", "dog goody")',,
      'FindAnagrams("good", "dog goody")',, '=', '')

check('detects anagram' 'FindAnagrams("listen", "enlists google inlets banana")',,
      'FindAnagrams("listen", "enlists google inlets banana")',, '=', 'inlets')

check('detects three anagrams' 'FindAnagrams("allergy", "gallery ballerina regally clergy largely leading")',,
      'FindAnagrams("allergy", "gallery ballerina regally clergy largely leading")',, '=', 'gallery regally largely')

check('detects multiple anagrams with different case' 'FindAnagrams("nose", "Eons ONES")',,
      'FindAnagrams("nose", "Eons ONES")',, '=', 'Eons ONES')

check('does not detect non-anagrams with identical checksum' 'FindAnagrams("mass", "last")',,
      'FindAnagrams("mass", "last")',, '=', '')

check('detects anagrams case-insensitively' 'FindAnagrams("Orchestra", "cashregister Carthorse radishes")',,
      'FindAnagrams("Orchestra", "cashregister Carthorse radishes")',, '=', 'Carthorse')

check('detects anagrams using case-insensitive subject' 'FindAnagrams("Orchestra", "cashregister carthorse radishes")',,
      'FindAnagrams("Orchestra", "cashregister carthorse radishes")',, '=', 'carthorse')

check('detects anagrams using case-insensitive possible matches' 'FindAnagrams("orchestra", "cashregister Carthorse radishes")',,
      'FindAnagrams("orchestra", "cashregister Carthorse radishes")',, '=', 'Carthorse')

check('does not detect a anagram if the original word is repeated' 'FindAnagrams("go", "go Go GO")',,
      'FindAnagrams("go", "go Go GO")',, '=', '')

check('anagrams must use all letters exactly once' 'FindAnagrams("tapper", "patter")',,
      'FindAnagrams("tapper", "patter")',, '=', '')

check('words are not anagrams of themselves' 'FindAnagrams("BANANA", "BANANA")',,
      'FindAnagrams("BANANA", "BANANA")',, '=', '')

check('words are not anagrams of themselves even if letter case is partially different' 'FindAnagrams("BANANA", "Banana")',,
      'FindAnagrams("BANANA", "Banana")',, '=', '')

check('words are not anagrams of themselves even if letter case is completely different' 'FindAnagrams("BANANA", "banana")',,
      'FindAnagrams("BANANA", "banana")',, '=', '')

check('words other than themselves can be anagrams' 'FindAnagrams("LISTEN", "LISTEN Silent")',,
      'FindAnagrams("LISTEN", "LISTEN Silent")',, '=', 'Silent')

