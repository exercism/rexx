@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\sum-of-multiples-check ..\sum-of-multiples ..\sum-of-multiples-toplevel sum-of-multiples-funcs
@cd ..
