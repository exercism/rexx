@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\list-ops-check ..\list-ops ..\list-ops-toplevel list-ops-funcs
@cd ..
