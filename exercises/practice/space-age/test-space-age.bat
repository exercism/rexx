@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\space-age-check ..\space-age ..\space-age-toplevel
cd ..
