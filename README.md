# Exercism Rexx Track

[![configlet](https://github.com/exercism/rexx/workflows/configlet/badge.svg)](https://github.com/exercism/rexx/actions?query=workflow%3Aconfiglet) [![tests](https://github.com/exercism/rexx/workflows/test/badge.svg)](https://github.com/exercism/rexx/actions?query=workflow%3Atest)

Exercism exercises in Rexx.

## Overview
The Rexx programming language dates back to 1979, making it one of the first scripting languages, pre-dating languages such as Perl and TCL. It was originally implemented on IBM mainframe platforms (where it is still used), but has since been ported to other platforms.

It is a procedural language with a sole data type, the character string, and a small set of instructions. Among its features are _arbitrary precision arithmetic_, and a built-in assocoative array-like facility called _compound variables_.

The chosen Rexx implementation is [Regina](https://regina-rexx.sourceforge.io/). It is actively developed, widely ported, ANSI-standard conforming, sports an extensive collection of built-in functionality, and is probably the most popular  (subject to verification) non-mainframe-based Rexx implementation.

## TODO
- Initial documentation (language description etc)
- Initial metadata (config.json)
- Setup unit testing
- Implement hello-world exercise
- Implement 20+ additional practice exercises
- Other tasks contributing to track _go live_

## Comments
A notable issue is the selection of unit testing framework. No _standard_ framework appears to exist (there is _no_ RexxUnit), at least not on non-mainframe platforms.

There is a rudimentary, Rexx-based framework called [t-rexx](https://github.com/oakmount66/t-rexx), which could be used, but it can only test against variable contents, not console output, so limiting testing flexibility. Therefore, the options appear to be:
- Fork and suitably extend, _t-rexx_
- Use a non Rexx-based unit testing framework

The use of a non Rexx-based unit testing framework, specifically, [bats-core](https://github.com/bats-core/bats-core), appears the more appropriate choice. This is because [Regina](https://regina-rexx.sourceforge.io/) executes like any other command-line utility or script in allowing its output to be redirected, making it a suitable target for [bats-core](https://github.com/bats-core/bats-core).

## Project Status

ACTIVE
