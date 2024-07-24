@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\leap-check ..\leap ..\leap-toplevel
@cd ..
