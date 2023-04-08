# Rexx Style Guide

This guide describes the style intended for use with the Rexx track exercise test, and example, files.

## Rexx Standard

Code should conform to Rexx Language level 5.0.

Regina Rexx extensions, and SAA Standard functions for external library access, may be used.

AREXX extensions, and CMS buffer manipulation routines, should not be used.

## Platform

The runtime test environment is Linux-based, therefore only commands available in that environment may be used in ADDRESS instruction invocations. These should be clearly highlighted in code commentary.

## Names

### Instructions

Instructions (reserved words) should be rendered in **_lower case_**. So, the following is conformant with style guide recommendations:

```rexx
do while input \= ''
  parse var input char +1 input
  say char
end
```

while neither of the following are conformant, so not recommended:

```rexx
/* *** Not recommended *** */
Do While input \= ''
  Parse Var input char +1 input
  Say char
End
```

and:

```rexx
/* *** Not recommended *** */
DO WHILE input \= ''
  PARSE VAR input char +1 input
  SAY char
END
```

### Built-in Functions (BIFs)

### Variables

## Literals

### Hexadecimal and Binary Strings

### Newline Terminator

