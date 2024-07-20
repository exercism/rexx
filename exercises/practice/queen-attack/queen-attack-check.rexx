/* Unit Test Runner: t-rexx */
context('Checking the Queen Attack function')

/* Unit tests */
function = 'CanAttack'
check('Test attack ability -> cannot attack' 'CanAttack("b3", "d7")',,
      'CanAttack("b3", "d7")',, '=', 0)

check('Test attack ability -> cannot attack' 'CanAttack("b3", "d7")',,
      'CanAttack("b3", "d7")',, '=', 0)

check('Test attack ability -> can attack on same row' 'CanAttack("e4", "b4")',,
      'CanAttack("e4", "b4")',, '=', 1)

check('Test attack ability -> can attack on same column' 'CanAttack("b4", "b7")',,
      'CanAttack("b4", "b7")',, '=', 1)

check('Test attack ability -> can attack on first diagonal' 'CanAttack("a1", "f6")',,
      'CanAttack("a1", "f6")',, '=', 1)

check('Test attack ability -> can attack on second diagonal' 'CanAttack("a6", "b7")',,
      'CanAttack("a6", "b7")',, '=', 1)

check('Test attack ability -> can attack on third diagonal' 'CanAttack("d1", "f3")',,
      'CanAttack("d1", "f3")',, '=', 1)

check('Test attack ability -> can attack on fourth diagonal' 'CanAttack("f1", "a6")',,
      'CanAttack("f1", "a6")',, '=', 1)

check('Test attack ability -> queens must not share same square' 'CanAttack("e4", "e4")',,
      'CanAttack("e4", "e4")',, '=', '')

check('Test attack ability -> queens must not be blank' 'CanAttack("", "")',,
      'CanAttack("", "")',, '=', '')

check('Test attack ability -> invalid row 1' 'CanAttack("f1", "a9")',,
      'CanAttack("f1", "a9")',, '=', '')

check('Test attack ability -> invalid row 2' 'CanAttack("f1", "a0")',,
      'CanAttack("f1", "a0")',, '=', '')

check('Test attack ability -> invalid column' 'CanAttack("f1", "i8")',,
      'CanAttack("f1", "i8")',, '=', '')

