/* Unit Test Runner: t-rexx */
context('Checking the IsBalanced function')

/* Unit tests */
check("paired square brackets" 'IsBalanced("[]")',,
      'IsBalanced("[]")',, 'to be', 1)

check("empty string" 'IsBalanced("")',,
      'IsBalanced("")',, 'to be', 1)

check("unpaired brackets" 'IsBalanced("[[")',,
      'IsBalanced("[[")',, 'to be', 0)

check("wrong ordered brackets" 'IsBalanced("}{")',,
      'IsBalanced("}{")',, 'to be', 0)

check("wrong closing bracket" 'IsBalanced("{]")',,
      'IsBalanced("{]")',, 'to be', 0)

check("paired with whitespace" 'IsBalanced("{ }")',,
      'IsBalanced("{ }")',, 'to be', 1)

check("partially paired brackets" 'IsBalanced("{[])")',,
      'IsBalanced("{[])")',, 'to be', 0)

check("simple nested brackets" 'IsBalanced("{[]}")',,
      'IsBalanced("{[]}")',, 'to be', 1)

check("several paired brackets" 'IsBalanced("{}[]")',,
      'IsBalanced("{}[]")',, 'to be', 1)

check("paired and nested brackets" 'IsBalanced("([{}({}[])])")',,
      'IsBalanced("([{}({}[])])")',, 'to be', 1)

check("unopened closing brackets" 'IsBalanced("{[)][]}")',,
      'IsBalanced("{[)][]}")',, 'to be', 0)

check("unpaired and nested brackets" 'IsBalanced("([{])")',,
      'IsBalanced("([{])")',, 'to be', 0)

check("paired and wrong nested brackets" 'IsBalanced("[({]})")',,
      'IsBalanced("[({]})")',, 'to be', 0)

check("paired and incomplete brackets" 'IsBalanced("{}[")',,
      'IsBalanced("{}[")',, 'to be', 0)

check("math expression" 'IsBalanced("(((185 + 223.85) * 15) - 543)/2")',,
      'IsBalanced("(((185 + 223.85) * 15) - 543)/2")',, 'to be', 1)

check("complex latex expression" 'IsBalanced("\\left(\\begin{array}{cc} \\frac{1}{3} & x\\\\ \\mathrm{e}^{x} &... x^2 \\end{array}\\right)")',,
      'IsBalanced("\\left(\\begin{array}{cc} \\frac{1}{3} & x\\\\ \\mathrm{e}^{x} &... x^2 \\end{array}\\right)")',, 'to be', 1)

