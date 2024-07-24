@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\clock-check ..\clock ..\clock-toplevel
@cd ..
