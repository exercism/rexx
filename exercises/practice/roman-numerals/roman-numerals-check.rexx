/* Unit Test Runner: t-rexx */
context('Checking the Roman function')

/* Unit tests */
check('1 is I' 'Roman(1)',,
      'Roman(1)',, '=', 'I')

check('2 is II' 'Roman(2)',,
      'Roman(2)',, '=', 'II')

check('3 is III' 'Roman(3)',,
      'Roman(3)',, '=', 'III')

check('4 is IV' 'Roman(4)',,
      'Roman(4)',, '=', 'IV')

check('5 is V' 'Roman(5)',,
      'Roman(5)',, '=', 'V')

check('6 is VI' 'Roman(6)',,
      'Roman(6)',, '=', 'VI')

check('9 is IX' 'Roman(9)',,
      'Roman(9)',, '=', 'IX')

check('16 is XVI' 'Roman(16)',,
      'Roman(16)',, '=', 'XVI')

check('27 is XXVII' 'Roman(27)',,
      'Roman(27)',, '=', 'XXVII')

check('48 is XLVIII' 'Roman(48)',,
      'Roman(48)',, '=', 'XLVIII')

check('49 is XLIX' 'Roman(49)',,
      'Roman(49)',, '=', 'XLIX')

check('59 is LIX' 'Roman(59)',,
      'Roman(59)',, '=', 'LIX')

check('66 is LXVI' 'Roman(66)',,
      'Roman(66)',, '=', 'LXVI')

check('93 is XCIII' 'Roman(93)',,
      'Roman(93)',, '=', 'XCIII')

check('141 is CXLI' 'Roman(141)',,
      'Roman(141)',, '=', 'CXLI')

check('163 is CLXIII' 'Roman(163)',,
      'Roman(163)',, '=', 'CLXIII')

check('166 is CLXVI' 'Roman(166)',,
      'Roman(166)',, '=', 'CLXVI')

check('402 is CDII' 'Roman(402)',,
      'Roman(402)',, '=', 'CDII')

check('575 is DLXXV' 'Roman(575)',,
      'Roman(575)',, '=', 'DLXXV')

check('666 is DCLXVI' 'Roman(666)',,
      'Roman(666)',, '=', 'DCLXVI')

check('911 is CMXI' 'Roman(911)',,
      'Roman(911)',, '=', 'CMXI')

check('1024 is MXXIV' 'Roman(1024)',,
      'Roman(1024)',, '=', 'MXXIV')

check('1666 is MDCLXVI' 'Roman(1666)',,
      'Roman(1666)',, '=', 'MDCLXVI')

check('3000 is MMM' 'Roman(3000)',,
      'Roman(3000)',, '=', 'MMM')

check('3001 is MMMI' 'Roman(3001)',,
      'Roman(3001)',, '=', 'MMMI')

check('3999 is MMMCMXCIX' 'Roman(3999)',,
      'Roman(3999)',, '=', 'MMMCMXCIX')

