@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\high-scores-check ..\high-scores ..\high-scores-toplevel
cd ..
