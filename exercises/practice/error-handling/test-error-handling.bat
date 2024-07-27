@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\error-handling-check ..\error-handling ..\error-handling-toplevel error-handling-funcs
@cd ..
