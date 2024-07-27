@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\triangle-check ..\triangle ..\triangle-toplevel triangle-funcs
@cd ..
