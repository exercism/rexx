@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\darts-check ..\darts ..\darts-toplevel darts-funcs
@cd ..
