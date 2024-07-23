@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\bank-account-check ..\bank-account ..\bank-account-toplevel
cd ..
