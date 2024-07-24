@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\all-your-base-check ..\all-your-base ..\all-your-base-toplevel
@cd ..
