@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\sieve-check ..\sieve ..\sieve-toplevel
@cd ..
