@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\matching-brackets-check ..\matching-brackets ..\matching-brackets-toplevel
@cd ..
