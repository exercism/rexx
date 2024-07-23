@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\acronym-check ..\acronym ..\acronym-toplevel
cd ..
