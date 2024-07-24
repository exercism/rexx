@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\etl-check ..\etl ..\etl-toplevel
@cd ..
