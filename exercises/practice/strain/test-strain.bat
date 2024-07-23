@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\strain-check ..\strain ..\strain-toplevel
cd ..
