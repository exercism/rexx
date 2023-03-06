/* Unit Test Runner: t-rexx */
context('Checking the Encode and Decode functions')

/* Unit tests */
function = 'Encode'
check('encode -> encode yes' function||'("yes")',,
       function||'("yes")',, 'to be', 'bvh')

check('encode -> encode no' function||'("no")',,
       function||'("no")',, 'to be', 'ml')

check('encode -> encode OMG' function||'("OMG")',,
       function||'("OMG")',, 'to be', 'lnt')

check('encode -> encode spaces' function||'("O M G")',,
       function||'("O M G")',, 'to be', 'lnt')

check('encode -> encode mindblowingly' function||'("mindblowingly")',,
       function||'("mindblowingly")',, 'to be', 'nrmwy oldrm tob')

check('encode -> encode numbers' function||'("Testing,1 2 3, testing.")',,
       function||'("Testing,1 2 3, testing.")',, 'to be', 'gvhgr mt123 gvhgr mt')

check('encode -> encode deep thought' function||'("Truth is fiction.")',,
       function||'("Truth is fiction.")',, 'to be', 'gifgs rhurx grlm')

check('encode -> encode all the letters' function||'("The quick brown fox jumps over the lazy dog.")',,
       function||'("The quick brown fox jumps over the lazy dog.")',, 'to be', 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt')

function = 'Decode'
check('decode -> decode exercism' function||'("vcvix rhn")',,
       function||'("vcvix rhn")',, 'to be', 'exercism')

check('decode -> decode a sentence' function||'("zmlyh gzxov rhlug vmzhg vkkrm thglm v")',,
       function||'("zmlyh gzxov rhlug vmzhg vkkrm thglm v")',, 'to be', 'anobstacleisoftenasteppingstone')

check('decode -> decode numbers' function||'("gvhgr mt123 gvhgr mt")',,
       function||'("gvhgr mt123 gvhgr mt")',, 'to be', 'testing123testing')

check('decode -> decode all the letters' function||'("gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt")',,
       function||'("gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt")',, 'to be', 'thequickbrownfoxjumpsoverthelazydog')

check('decode -> decode with too many spaces' function||'("vc vix    r hn")',,
       function||'("vc vix    r hn")',, 'to be', 'exercism')

check('decode -> decode with no spaces' function||'("zmlyhgzxovrhlugvmzhgvkkrmthglmv")',,
       function||'("zmlyhgzxovrhlugvmzhgvkkrmthglmv")',, 'to be', 'anobstacleisoftenasteppingstone')

