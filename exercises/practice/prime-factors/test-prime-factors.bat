@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\prime-factors-check ..\prime-factors ..\prime-factors-toplevel
cd ..
