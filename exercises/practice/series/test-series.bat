@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\series-check ..\series ..\series-toplevel
@cd ..
