@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\two-fer-check ..\two-fer ..\two-fer-toplevel
@cd ..
