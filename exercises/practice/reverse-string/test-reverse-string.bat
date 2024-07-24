@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\reverse-string-check ..\reverse-string ..\reverse-string-toplevel
@cd ..
