@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\house-check ..\house ..\house-toplevel
cd ..
