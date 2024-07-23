@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\transpose-check ..\transpose ..\transpose-toplevel
cd ..
