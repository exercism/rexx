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

BIFs should be rendered in **_upper case_**, as illustrated here:

```rexx
input = 'ABCDE'
say 'Length of input is' LENGTH(input)
say 'First letter of input is' SUBSTR(input, 1, 1)
```

### Labels (User-defined functions)

Label names should be in **_Pascal case_**, as shown here:

```rexx
greeting = MyFuncSayHello()
say greeting

exit 0

MyFuncSayHello : procedure
  hello = 'Hello there!'
return hello
```

### Variables

Variable names should start with a **_lower case_** letter, so single-word variables would be lower case.

Multi-word variables may be expressed in either **_camel case_** or **_snake case_**.

The convention adopted for the track is to utilise _camel case for most variables_, and reserve snake case for test variables. Variables intended as constants may, optionally, also be in upper case.

```rexx
input = 'ABCDE'
i = 0

personName = 'Alice'
test_person_description = 'Brown hair, blue eyes'

TRUE = 1
PI_CONSTANT = 3.14159
```

## Literals

Strings may be denoted using either single or double quotes, **`'`**, and **`"`**, respectively. The following are equaivalent:

```rexx
say "Hello, world!"

say 'Hello, world!'
```

Each are embeddable within the other without needing an escape character:

```rexx
say "Please don't do that as it's wrong."

say 'He said, "Please sir, may I have more?".'
```

Unless strings contain embedded quotes, so requiring the intermixing of quotes, it is preferred strings be denoted using **_single quotes_**.

### Hexadecimal and Binary Strings

### Newline Terminator

