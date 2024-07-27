@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\saddle-points-check ..\saddle-points ..\saddle-points-toplevel saddle-points-funcs
@cd ..
