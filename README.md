# Exercism Rexx Track

[![configlet](https://github.com/exercism/rexx/workflows/configlet/badge.svg)](https://github.com/exercism/rexx/actions?query=workflow%3Aconfiglet) [![tests](https://github.com/exercism/rexx/workflows/test/badge.svg)](https://github.com/exercism/rexx/actions?query=workflow%3Atest)

Exercism exercises in Rexx.

## Overview
The Rexx programming language dates back to 1979, making it one of the first scripting languages, pre-dating languages such as Perl and TCL. It was originally implemented on IBM mainframe platforms (where it is still used), but has since been ported to other platforms.

It is a procedural language with a sole data type, the character string, and a small set of instructions. Among its features are _arbitrary precision arithmetic_, and a built-in assocoative array-like facility called _compound variables_.

The chosen Rexx implementation is [Regina](https://regina-rexx.sourceforge.io/). It is actively developed, widely ported, ANSI-standard conforming, sports an extensive collection of built-in functionality, and is probably the most popular  (subject to verification) non-mainframe-based Rexx implementation.

## TODO
- Refine documentation
- Complete contributor documentation and tooling (contributions welcome after these are complete, and the site is active)
- Refine unit testing
- Other tasks contributing to track _go live_ such as CI and test runner

## Comments
A notable issue has been the selection of unit testing framework. No _standard_ framework appears to exist (there is _no_ RexxUnit), at least not on non-mainframe platforms.

Decision was made to use a Rexx-based framework [t-rexx](https://github.com/ajborla/t-rexx).

Substantial work has been done (and is actively progessing) to suitably customize this framework.

## Project Status

ACTIVE
