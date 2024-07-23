@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\grains-check ..\grains ..\grains-toplevel
cd ..
