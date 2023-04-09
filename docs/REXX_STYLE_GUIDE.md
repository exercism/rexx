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

Binary, and hexadecimal values, are representable by appending a **`B`**, or an **`X`**, respectively, to a string. Examples:

```rexx
hexvalue = "0A"X

binvalue = "00001010"B
```

It is recommended such values be delimited by **_double quotes_**.

Together with the previous recommendation to use single quotes to represent plain strings, this convention should facilitate the identification of binary and hexadecimal strings in a code base.

### Newline Terminator
In many UNIX or C-influenced languages, the literal, **_`\n`_**, is used as the **_newline_** terminator. Such usage is widespread, and several exercises in this track involve use, and manipulation of, strings with this terminator.

Rexx does not support this terminator, nor does it support, **_`\`_** (or any other character), as an  escape character.

The Rexx equivalent of the newline character is a (platform-dependant) hexadecimal value; on UNIX-derived platforms it is:

**_`"0A"X`_**

The Rexx-equivalent of following, newline-embedded string (using bash shell):

```bash
printf "I have\nthree embedded\nnewlines.\n"
```

is:

```rexx
say 'I have' || "0A"X || 'three embedded' || "0A"X || 'newlines.' || "0A"X
```

Exercises in this track will only translate **_`\n`_** to **_`"0A"X`_** when required in a string intended for terminal display. Otherwise, the **_`\n`_** string will simply be interpreted as a logical newline.

## Other Stylistic Recommendations

Indentation may be either two, three, or four, SPACE characters, although _two character_ indentation, and consistency in indentation, is preferred.

The final **_return_** instruction in a function should align with the label name, thus clearly marking the end of that function, and should _always_ return a value.

The Boolean NOT operator is representable by several different symbols. The preferred symbol in this track is **`\`**, and, to maintain consistency with this usage, the relational 'not equals' operator, should be **`\=`**.

The Boolean values of **`false`**, and **`true`**, are represented by **`0`**, and **`1`**, respectively. No pre-defined literals for these values exist.

Error states are indicated using return values, with either the empty string, **`''`**, or **`-1`**, indicating error states, context dependant.

