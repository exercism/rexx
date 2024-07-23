@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\square-root-check ..\square-root ..\square-root-toplevel
cd ..
