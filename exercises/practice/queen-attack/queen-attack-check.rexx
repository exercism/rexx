/* Unit Test Runner: t-rexx */
context('Checking the Queen Attack function')

/* Unit tests */
function = 'CanAttack'
check('Test attack ability -> cannot attack' function||'("b3", "d7")',,
      function||'("b3", "d7")',, 'to be', 0)

check('Test attack ability -> cannot attack' function||'("b3", "d7")',,
      function||'("b3", "d7")',, 'to be', 0)

check('Test attack ability -> can attack on same row' function||'("e4", "b4")',,
      function||'("e4", "b4")',, 'to be', 1)

check('Test attack ability -> can attack on same column' function||'("b4", "b7")',,
      function||'("b4", "b7")',, 'to be', 1)

check('Test attack ability -> can attack on first diagonal' function||'("a1", "f6")',,
      function||'("a1", "f6")',, 'to be', 1)

check('Test attack ability -> can attack on second diagonal' function||'("a6", "b7")',,
      function||'("a6", "b7")',, 'to be', 1)

check('Test attack ability -> can attack on third diagonal' function||'("d1", "f3")',,
      function||'("d1", "f3")',, 'to be', 1)

check('Test attack ability -> can attack on fourth diagonal' function||'("f1", "a6")',,
      function||'("f1", "a6")',, 'to be', 1)

check('Test attack ability -> queens must not share same square' function||'("e4", "e4")',,
      function||'("e4", "e4")',, 'to be', '')

check('Test attack ability -> queens must not be blank' function||'("", "")',,
      function||'("", "")',, 'to be', '')

check('Test attack ability -> invalid row 1' function||'("f1", "a9")',,
      function||'("f1", "a9")',, 'to be', '')

check('Test attack ability -> invalid row 2' function||'("f1", "a0")',,
      function||'("f1", "a0")',, 'to be', '')

check('Test attack ability -> invalid column' function||'("f1", "i8")',,
      function||'("f1", "i8")',, 'to be', '')

