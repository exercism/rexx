@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\bob-check ..\bob ..\bob-toplevel
@cd ..
