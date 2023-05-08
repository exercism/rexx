/* Unit Test Runner: t-rexx */
context('Checking the Encode and Decode functions')

/* Unit tests */
check('encode -> encode yes' 'Encode("yes")',,
      'Encode("yes")',, 'to be', 'bvh')

check('encode -> encode no' 'Encode("no")',,
      'Encode("no")',, 'to be', 'ml')

check('encode -> encode OMG' 'Encode("OMG")',,
      'Encode("OMG")',, 'to be', 'lnt')

check('encode -> encode spaces' 'Encode("O M G")',,
      'Encode("O M G")',, 'to be', 'lnt')

check('encode -> encode mindblowingly' 'Encode("mindblowingly")',,
      'Encode("mindblowingly")',, 'to be', 'nrmwy oldrm tob')

check('encode -> encode numbers' 'Encode("Testing,1 2 3, testing.")',,
      'Encode("Testing,1 2 3, testing.")',, 'to be', 'gvhgr mt123 gvhgr mt')

check('encode -> encode deep thought' 'Encode("Truth is fiction.")',,
      'Encode("Truth is fiction.")',, 'to be', 'gifgs rhurx grlm')

check('encode -> encode all the letters' 'Encode("The quick brown fox jumps over the lazy dog.")',,
      'Encode("The quick brown fox jumps over the lazy dog.")',, 'to be', 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt')

check('decode -> decode exercism' 'Decode("vcvix rhn")',,
      'Decode("vcvix rhn")',, 'to be', 'exercism')

check('decode -> decode a sentence' 'Decode("zmlyh gzxov rhlug vmzhg vkkrm thglm v")',,
      'Decode("zmlyh gzxov rhlug vmzhg vkkrm thglm v")',, 'to be', 'anobstacleisoftenasteppingstone')

check('decode -> decode numbers' 'Decode("gvhgr mt123 gvhgr mt")',,
      'Decode("gvhgr mt123 gvhgr mt")',, 'to be', 'testing123testing')

check('decode -> decode all the letters' 'Decode("gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt")',,
      'Decode("gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt")',, 'to be', 'thequickbrownfoxjumpsoverthelazydog')

check('decode -> decode with too many spaces' 'Decode("vc vix        r hn")',,
      'Decode("vc vix        r hn")',, 'to be', 'exercism')

check('decode -> decode with no spaces' 'Decode("zmlyhgzxovrhlugvmzhgvkkrmthglmv")',,
      'Decode("zmlyhgzxovrhlugvmzhgvkkrmthglmv")',, 'to be', 'anobstacleisoftenasteppingstone')

