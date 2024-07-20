/* Unit Test Runner: t-rexx */
context('Checking the Encode and Decode functions')

/* Unit tests */
check('encode -> encode yes' 'Encode("yes")',,
      'Encode("yes")',, '=', 'bvh')

check('encode -> encode no' 'Encode("no")',,
      'Encode("no")',, '=', 'ml')

check('encode -> encode OMG' 'Encode("OMG")',,
      'Encode("OMG")',, '=', 'lnt')

check('encode -> encode spaces' 'Encode("O M G")',,
      'Encode("O M G")',, '=', 'lnt')

check('encode -> encode mindblowingly' 'Encode("mindblowingly")',,
      'Encode("mindblowingly")',, '=', 'nrmwy oldrm tob')

check('encode -> encode numbers' 'Encode("Testing,1 2 3, testing.")',,
      'Encode("Testing,1 2 3, testing.")',, '=', 'gvhgr mt123 gvhgr mt')

check('encode -> encode deep thought' 'Encode("Truth is fiction.")',,
      'Encode("Truth is fiction.")',, '=', 'gifgs rhurx grlm')

check('encode -> encode all the letters' 'Encode("The quick brown fox jumps over the lazy dog.")',,
      'Encode("The quick brown fox jumps over the lazy dog.")',, '=', 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt')

check('decode -> decode exercism' 'Decode("vcvix rhn")',,
      'Decode("vcvix rhn")',, '=', 'exercism')

check('decode -> decode a sentence' 'Decode("zmlyh gzxov rhlug vmzhg vkkrm thglm v")',,
      'Decode("zmlyh gzxov rhlug vmzhg vkkrm thglm v")',, '=', 'anobstacleisoftenasteppingstone')

check('decode -> decode numbers' 'Decode("gvhgr mt123 gvhgr mt")',,
      'Decode("gvhgr mt123 gvhgr mt")',, '=', 'testing123testing')

check('decode -> decode all the letters' 'Decode("gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt")',,
      'Decode("gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt")',, '=', 'thequickbrownfoxjumpsoverthelazydog')

check('decode -> decode with too many spaces' 'Decode("vc vix        r hn")',,
      'Decode("vc vix        r hn")',, '=', 'exercism')

check('decode -> decode with no spaces' 'Decode("zmlyhgzxovrhlugvmzhgvkkrmthglmv")',,
      'Decode("zmlyhgzxovrhlugvmzhgvkkrmthglmv")',, '=', 'anobstacleisoftenasteppingstone')

