@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\queen-attack-check ..\queen-attack ..\queen-attack-toplevel queen-attack-funcs
@cd ..
