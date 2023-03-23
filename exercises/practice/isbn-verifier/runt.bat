@echo off & setlocal

:: ----------------------------------------------------------------------------
:: Script runner for t.rexx
::
:: %1 -> the test script (rexx)
:: %2 -> the application to test (rexx)
::
:: This script concatenates the files:
::
::   t1.rexx + %1.rexx + t2.rexx + %2.rexx + t3.rexx
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
:: ----------------------------------------------------------------------------

:init
  set RUNNER=t.rexx
  set RC=1

:chkusage
  :: Help requested ?
  if /i "%1"=="/?" goto :help
  if /i "%1"=="-?" goto :help
  for %%i in (-h --help /h /help) do (
    if /i "%1"=="%%i" goto :help
  )

:chkoptions
  if /i "%2"=="--keep" set KEEP=KEEP&& shift
  if /i "%2"=="--tap-output" set TAP=TAP&& shift
  if /i "%1"=="--keep" set KEEP=KEEP&& shift
  if /i "%1"=="--tap-output" set TAP=TAP&& shift

:chkarg
  if "%2"=="" goto :argErr
  if "%1"=="" goto :argErr

:chkfile
  :: Do source and test script files exist ?
  if not exist "%2.rexx" goto :noSourceFileErr
  if not exist "%1.rexx" goto :noTestFileErr

:main
  :: Assemble test runner from components and supplied files
  copy/v t1.rexx+"%1.rexx"+t2.rexx+"%2.rexx"+t3.rexx %RUNNER% > NUL:

  :: Execute test runner with output option
  :: - %TAP%==TAP -> TAP output
  :: - %TAP%==""  -> REPORT output
  rexx %RUNNER% %TAP%

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
  echo * --tap-output option generates TAP-compliant output; default is verbose report style
  echo * --keep option ensures the generated test runner is not deleted
  echo * Return code zero on test run success; positive-valued return code equals number of failed tests
  echo * Expects 'rexx' interpreter to be available
  echo * Expects t-rexx component files, t1.rexx, t2.rexx, and t3.rexx, co-resident with test and source
  goto :usage

:argErr
  echo Error: Incorrect arguments
  goto :usage

:noSourceFileErr
  echo Error: Missing source file - "%2.rexx"
  goto :usage

:noTestFileErr
  echo Error: Missing test script - "%1.rexx"

:usage
  echo.
  echo Usage: %0 [-h ^| -? ^| --help ^| /h ^| /? ^| /help] ^| [--keep] [--tap-output] test source

:exit
  exit/b %RC%

