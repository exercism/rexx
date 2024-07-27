@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\custom-set-check ..\custom-set ..\custom-set-toplevel custom-set-funcs
@cd ..
