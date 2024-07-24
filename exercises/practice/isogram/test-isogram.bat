@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\isogram-check ..\isogram ..\isogram-toplevel
@cd ..
