@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\phone-number-check ..\phone-number ..\phone-number-toplevel
cd ..
