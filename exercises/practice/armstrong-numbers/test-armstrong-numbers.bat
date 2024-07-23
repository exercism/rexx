@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\armstrong-numbers-check ..\armstrong-numbers ..\armstrong-numbers-toplevel
cd ..
