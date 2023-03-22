/* Unit Test Runner: t-rexx */
function = 'IsBalanced'
context('Checking the' function 'function')

/* Unit tests */
check("paired square brackets" function||'("[]")',,
      function||'("[]")',, 'to be', 1)

check("empty string" function||'("")',,
      function||'("")',, 'to be', 1)

check("unpaired brackets" function||'("[[")',,
      function||'("[[")',, 'to be', 0)

check("wrong ordered brackets" function||'("}{")',,
      function||'("}{")',, 'to be', 0)

check("wrong closing bracket" function||'("{]")',,
      function||'("{]")',, 'to be', 0)

check("paired with whitespace" function||'("{ }")',,
      function||'("{ }")',, 'to be', 1)

check("partially paired brackets" function||'("{[])")',,
      function||'("{[])")',, 'to be', 0)

check("simple nested brackets" function||'("{[]}")',,
      function||'("{[]}")',, 'to be', 1)

check("several paired brackets" function||'("{}[]")',,
      function||'("{}[]")',, 'to be', 1)

check("paired and nested brackets" function||'("([{}({}[])])")',,
      function||'("([{}({}[])])")',, 'to be', 1)

check("unopened closing brackets" function||'("{[)][]}")',,
      function||'("{[)][]}")',, 'to be', 0)

check("unpaired and nested brackets" function||'("([{])")',,
      function||'("([{])")',, 'to be', 0)

check("paired and wrong nested brackets" function||'("[({]})")',,
      function||'("[({]})")',, 'to be', 0)

check("paired and incomplete brackets" function||'("{}[")',,
      function||'("{}[")',, 'to be', 0)

check("math expression" function||'("(((185 + 223.85) * 15) - 543)/2")',,
      function||'("(((185 + 223.85) * 15) - 543)/2")',, 'to be', 1)

check("complex latex expression" function||'("\\left(\\begin{array}{cc} \\frac{1}{3} & x\\\\ \\mathrm{e}^{x} &... x^2 \\end{array}\\right)")',,
      function||'("\\left(\\begin{array}{cc} \\frac{1}{3} & x\\\\ \\mathrm{e}^{x} &... x^2 \\end{array}\\right)")',, 'to be', 1)

