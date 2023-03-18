/* Unit Test Runner: t-rexx */
function = 'FindAnagrams'
context('Checking the' function 'function')

/* Unit tests */
check('no matches' function||'("diaper", "hello world zombies pants")',,
      function||'("diaper", "hello world zombies pants")',, 'to be', '')

check('detects two anagrams' function||'("solemn", "lemons cherry melons")',,
      function||'("solemn", "lemons cherry melons")',, 'to be', 'lemons melons')

check('does not detect anagram subsets' function||'("good", "dog goody")',,
      function||'("good", "dog goody")',, 'to be', '')

check('detects anagram' function||'("listen", "enlists google inlets banana")',,
      function||'("listen", "enlists google inlets banana")',, 'to be', 'inlets')

check('detects three anagrams' function||'("allergy", "gallery ballerina regally clergy largely leading")',,
      function||'("allergy", "gallery ballerina regally clergy largely leading")',, 'to be', 'gallery regally largely')

check('detects multiple anagrams with different case' function||'("nose", "Eons ONES")',,
      function||'("nose", "Eons ONES")',, 'to be', 'Eons ONES')

check('does not detect non-anagrams with identical checksum' function||'("mass", "last")',,
      function||'("mass", "last")',, 'to be', '')

check('detects anagrams case-insensitively' function||'("Orchestra", "cashregister Carthorse radishes")',,
      function||'("Orchestra", "cashregister Carthorse radishes")',, 'to be', 'Carthorse')

check('detects anagrams using case-insensitive subject' function||'("Orchestra", "cashregister carthorse radishes")',,
      function||'("Orchestra", "cashregister carthorse radishes")',, 'to be', 'carthorse')

check('detects anagrams using case-insensitive possible matches' function||'("orchestra", "cashregister Carthorse radishes")',,
      function||'("orchestra", "cashregister Carthorse radishes")',, 'to be', 'Carthorse')

check('does not detect a anagram if the original word is repeated' function||'("go", "go Go GO")',,
      function||'("go", "go Go GO")',, 'to be', '')

check('anagrams must use all letters exactly once' function||'("tapper", "patter")',,
      function||'("tapper", "patter")',, 'to be', '')

check('words are not anagrams of themselves' function||'("BANANA", "BANANA")',,
      function||'("BANANA", "BANANA")',, 'to be', '')

check('words are not anagrams of themselves even if letter case is partially different' function||'("BANANA", "Banana")',,
      function||'("BANANA", "Banana")',, 'to be', '')

check('words are not anagrams of themselves even if letter case is completely different' function||'("BANANA", "banana")',,
      function||'("BANANA", "banana")',, 'to be', '')

check('words other than themselves can be anagrams' function||'("LISTEN", "LISTEN Silent")',,
      function||'("LISTEN", "LISTEN Silent")',, 'to be', 'Silent')

