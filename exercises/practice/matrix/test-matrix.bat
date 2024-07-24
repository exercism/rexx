@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\matrix-check ..\matrix ..\matrix-toplevel
@cd ..
