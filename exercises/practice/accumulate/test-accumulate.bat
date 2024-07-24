@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\accumulate-check ..\accumulate ..\accumulate-toplevel
@cd ..
