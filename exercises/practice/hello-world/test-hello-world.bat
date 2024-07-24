@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\hello-world-check ..\hello-world ..\hello-world-toplevel
@cd ..
