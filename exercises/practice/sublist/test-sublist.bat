@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\sublist-check ..\sublist ..\sublist-toplevel sublist-funcs
@cd ..
