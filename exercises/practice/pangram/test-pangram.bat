@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\pangram-check ..\pangram ..\pangram-toplevel pangram-funcs
@cd ..
