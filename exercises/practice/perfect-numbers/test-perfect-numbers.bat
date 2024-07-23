@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\perfect-numbers-check ..\perfect-numbers ..\perfect-numbers-toplevel
cd ..
