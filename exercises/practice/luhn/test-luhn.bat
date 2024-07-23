@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\luhn-check ..\luhn ..\luhn-toplevel
cd ..
