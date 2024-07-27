@echo off & setlocal

:: ----------------------------------------------------------------------------
:: Script runner for t.rexx
::
:: %1 -> the test script (rexx)
:: %2 -> the application to test (rexx)
:: %3 -> optional shared variable definitions file (rexx)
:: %4 -> optional custom testing functions definitions file (rexx)
::
:: This script concatenates the files:
::
::   t1.rexx + %1.rexx + t2.rexx + %2.rexx + t3.rexx
::
:: or, if optional file specified:
::
::   %3.rexx + t1.rexx + %1.rexx + t2.rexx + %2.rexx + t3.rexx
::
:: or, if both optional files specified:
::
::   %3.rexx + t1.rexx + %1.rexx + t2.rexx + %2.rexx + %4.rexx + t3.rexx
::
:: and executes the resulting test runner file. The return code from the
:: test runner is passed back to the command-line. Valid return code values:
::
:: - 0        -> value indicates success, all tests passed
:: - positive -> value indicates failure, value equals number of failed tests
::
:: Revision History:
::
:: Date          Version     Author              Description
:: ----------    -------     ----------------    ------------------------------
:: 2015-04-03      0.0.1     Dave Nicolette      Initial implementation.
:: 2023-02-07      0.0.2     Anthony J. Borla    Prevent extraneous output.
:: 2023-02-07      0.0.3     Anthony J. Borla    Return return code.
:: 2023-02-08      0.0.4     Anthony J. Borla    Pass TAP option to runner.
:: 2023-02-09      0.0.5     Anthony J. Borla    Revised header content.
:: 2023-02-10      0.1.0     Anthony J. Borla    Add argument checks, %RC%.
:: 2023-02-10      0.2.0     Anthony J. Borla    Add file existence checks.
:: 2023-02-10      0.3.0     Anthony J. Borla    Add script help and usage.
:: 2023-02-10      0.3.1     Anthony J. Borla    Prevent environment pollution.
:: 2023-02-10      0.3.2     Anthony J. Borla    Fix hard-coded test runner.
:: 2023-02-10      0.4.0     Anthony J. Borla    Add KEEP and TAP options.
:: 2023-02-10      0.4.1     Anthony J. Borla    Revise commentary and help.
:: 2023-04-13      0.5.0     Anthony J. Borla    Added regina support.
:: 2023-04-14      0.6.0     Anthony J. Borla    Added JSON option.
:: 2023-04-15      0.6.1     Anthony J. Borla    Fix argument handling.
:: 2023-04-15      0.6.2     Anthony J. Borla    Simplify argument handling.
:: 2023-04-15      0.7.0     Anthony J. Borla    Added toplevel support.
:: 2023-04-15      0.7.1     Anthony J. Borla    Revise header commentary.
:: 2023-04-19      0.7.2     Anthony J. Borla    Fix JSON option.
:: 2024-07-27      0.7.3     Anthony J. Borla    Support test functions.
:: ----------------------------------------------------------------------------

:init
  set RUNNER=t.rexx
  set INTERPRETER=rexx
  set RC=1

:chknoarg1
  if "%1"=="" goto :argErr

:chkusage
  :: Help requested ?
  if /i "%1"=="/?" goto :help
  if /i "%1"=="-?" goto :help
  for %%i in (-h --help /h /help) do (
    if /i "%1"=="%%i" goto :help
  )

:chknoarg2
  if "%2"=="" goto :argErr

:getopt
  if /i "%1"=="--keep" set KEEP=KEEP&& shift && goto :getopt
  if /i "%1"=="--tap" set TAP=TAP&& shift && goto :getopt
  if /i "%1"=="--json" set JSON=JSON&& shift && goto :getopt
  if /i "%1"=="--regina" set INTERPRETER=regina&& shift && goto :getopt

:chkopt
  :: Ensure mutual exclusivity
  if "%TAP%"=="TAP" if "%JSON%"=="JSON" goto :optErr

:chkarg
  if "%2"=="" goto :argErr
  if "%1"=="" goto :argErr

:chkfile
  :: Do optional files exist ?
  if not "%4"=="" if not exist "%4.rexx" goto :noCheckFuncsFileErr
  if not "%3"=="" if not exist "%3.rexx" goto :noToplevelFileErr

  :: Do source and test script files exist ?
  if not exist "%2.rexx" goto :noSourceFileErr
  if not exist "%1.rexx" goto :noTestFileErr

:main
  :: Assemble test runner from components and supplied files
  if not "%4"=="" goto :copyFuncs
  if not "%3"=="" goto :copyVarsOnly

:copyNoOptionals
  copy/v t1.rexx+"%1.rexx"+t2.rexx+"%2.rexx"+t3.rexx %RUNNER% > NUL:
  goto :setOptions

:copyFuncs
  copy/v "%3.rexx"+t1.rexx+"%1.rexx"+t2.rexx+"%2.rexx"+"%4.rexx"+t3.rexx %RUNNER% > NUL:
  goto :setOptions

:copyVarsOnly
  copy/v "%3.rexx"+t1.rexx+"%1.rexx"+t2.rexx+"%2.rexx"+t3.rexx %RUNNER% > NUL:

:setOptions
  :: Set output option
  if "%TAP%"=="TAP" set OUT=%TAP%
  if "%JSON%"=="JSON" set OUT=%JSON%

  :: Execute test runner with output option
  :: - "%OUT%"=="JSON" -> JSON output
  :: - "%OUT%"=="TAP"  -> TAP output
  :: - "%OUT%"==""     -> REPORT output
  %INTERPRETER% %RUNNER% %OUT%

  :: Ensure test runner return code passed back to command-line
  set RC=%errorlevel%

  :: Unless KEEP option is set, delete the test runner
  if not "%KEEP%"=="KEEP" del /q %RUNNER% 2> NUL:
  goto :exit

:help
  set RC=0
  echo.
  echo Executes t-rexx unit test runner using supplied Rexx test script on specified Rexx source file.
  echo * %%1 is the test script name, %%2 is the source file (code under test), both sans .rexx extension
  echo * %%3 is an optional Rexx file containing variables shared by the code under test (sans .rexx extension)
  echo * %%4 is another optional Rexx file containing custom functions used in testing
  echo * --tap option generates TAP-compliant output; default is verbose report style
  echo * --json option packages report style output as a JSON array (incompatible with --tap option)
  echo * --keep option ensures the generated test runner is not deleted
  echo * --regina option activates the regina interpreter (for shared library support)
  echo * Return code zero on test run success; positive-valued return code equals number of failed tests
  echo * Expects 'rexx' interpreter to be available
  echo * Expects t-rexx component files, t1.rexx, t2.rexx, and t3.rexx, co-resident with test and source
  goto :usage

:argErr
  echo Error: Incorrect arguments
  goto :usage

:optErr
  echo Error: Incorrect option combination - either --tap or --json, not both
  goto :usage

:noCheckFuncsFileErr
  echo Error: Missing checkfuncs file - "%4.rexx"
  goto :usage

:noToplevelFileErr
  echo Error: Missing toplevel file - "%3.rexx"
  goto :usage

:noSourceFileErr
  echo Error: Missing source file - "%2.rexx"
  goto :usage

:noTestFileErr
  echo Error: Missing test script - "%1.rexx"

:usage
  echo.
  echo Usage: %0 [-h ^| -? ^| --help ^| /h ^| /? ^| /help] ^| [--keep] [--tap^|--json] [--regina] test source [toplevel] [checkfuncs]

:exit
  exit/b %RC%

