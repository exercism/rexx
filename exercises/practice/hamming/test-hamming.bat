@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\hamming-check ..\hamming ..\hamming-toplevel
cd ..
