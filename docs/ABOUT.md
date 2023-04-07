# About

The Rexx programming language dates back to 1979, making it one of the first scripting languages, pre-dating languages such as TCL and Perl.

It was originally implemented on IBM mainframe platforms (where it is still widely used), but has since been ported to a variety of other platforms including Linux and Windows.

It is a procedural language with a single primitive data type, the character string, and the core language comprises about two dozen, English-like instructions, and a small library of functions. Its focus is **simplicity** and **understandability**, so it eschews such things as pointers, references, and esoteric operators.

Among its more compelling features:

* Computations via _arbitrary precision arithmetic_
* _Hexadecimal_, and _binary_, literal strings
* Aggregate data structures (n-dimension arrays, hashes, records and trees) representable via a single syntax, _compound symbols_ (a.k.a. 'stem' variables)
* Inbuilt _data stack_ supporting both FIFO and LIFO behaviours

Please note that since Rexx has mainframe, rather than UNIX, origins, there are some small, but significant, differences between it and more recent languages, all of which have silently absorbed both UNIX and C language conventions:

<div align="center">

| Item                  | UNIX/C derived      | Rexx         |
| -------------------   | :--------------:    | :----:       |
|Boolean AND            | &&                  | &            |
|Boolean OR             | &#124;&#124;        | &#124;       |
|Boolean NOT            | !                   | \            |
|Concatenation          | + (Java/Javascript) | &#124;&#124; |
|Integer Division       | /                   | %            |
|Modulo Division        | %                   | //           |
|Newline Terminator     | \n                  | "0A"X        |
|Escape character       | \                   | N/A          |

</div>

The chosen Rexx implementation is [Regina](https://regina-rexx.sourceforge.io/). It is widely ported, actively developed, ANSI-standard conforming, sports an extensive collection of built-in functions, and is the most popular non-mainframe-based Rexx implementation.

An additional, important reason for choosing [Regina](https://regina-rexx.sourceforge.io/) is its implementation of the ADDRESS instruction, allowing for almost seamless interaction with the host operating system, a rich source of additional functionality.
