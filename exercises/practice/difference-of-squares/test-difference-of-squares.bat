@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\difference-of-squares-check ..\difference-of-squares ..\difference-of-squares-toplevel
cd ..
