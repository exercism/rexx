/* Unit Test Runner: t-rexx */
context('Checking the Roman function')

/* Unit tests */
check('1 is I' 'Roman(1)',,
      'Roman(1)',, 'to be', 'I')

check('2 is II' 'Roman(2)',,
      'Roman(2)',, 'to be', 'II')

check('3 is III' 'Roman(3)',,
      'Roman(3)',, 'to be', 'III')

check('4 is IV' 'Roman(4)',,
      'Roman(4)',, 'to be', 'IV')

check('5 is V' 'Roman(5)',,
      'Roman(5)',, 'to be', 'V')

check('6 is VI' 'Roman(6)',,
      'Roman(6)',, 'to be', 'VI')

check('9 is IX' 'Roman(9)',,
      'Roman(9)',, 'to be', 'IX')

check('16 is XVI' 'Roman(16)',,
      'Roman(16)',, 'to be', 'XVI')

check('27 is XXVII' 'Roman(27)',,
      'Roman(27)',, 'to be', 'XXVII')

check('48 is XLVIII' 'Roman(48)',,
      'Roman(48)',, 'to be', 'XLVIII')

check('49 is XLIX' 'Roman(49)',,
      'Roman(49)',, 'to be', 'XLIX')

check('59 is LIX' 'Roman(59)',,
      'Roman(59)',, 'to be', 'LIX')

check('66 is LXVI' 'Roman(66)',,
      'Roman(66)',, 'to be', 'LXVI')

check('93 is XCIII' 'Roman(93)',,
      'Roman(93)',, 'to be', 'XCIII')

check('141 is CXLI' 'Roman(141)',,
      'Roman(141)',, 'to be', 'CXLI')

check('163 is CLXIII' 'Roman(163)',,
      'Roman(163)',, 'to be', 'CLXIII')

check('166 is CLXVI' 'Roman(166)',,
      'Roman(166)',, 'to be', 'CLXVI')

check('402 is CDII' 'Roman(402)',,
      'Roman(402)',, 'to be', 'CDII')

check('575 is DLXXV' 'Roman(575)',,
      'Roman(575)',, 'to be', 'DLXXV')

check('666 is DCLXVI' 'Roman(666)',,
      'Roman(666)',, 'to be', 'DCLXVI')

check('911 is CMXI' 'Roman(911)',,
      'Roman(911)',, 'to be', 'CMXI')

check('1024 is MXXIV' 'Roman(1024)',,
      'Roman(1024)',, 'to be', 'MXXIV')

check('1666 is MDCLXVI' 'Roman(1666)',,
      'Roman(1666)',, 'to be', 'MDCLXVI')

check('3000 is MMM' 'Roman(3000)',,
      'Roman(3000)',, 'to be', 'MMM')

check('3001 is MMMI' 'Roman(3001)',,
      'Roman(3001)',, 'to be', 'MMMI')

check('3999 is MMMCMXCIX' 'Roman(3999)',,
      'Roman(3999)',, 'to be', 'MMMCMXCIX')

