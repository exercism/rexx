@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\roman-numerals-check ..\roman-numerals ..\roman-numerals-toplevel
cd ..
