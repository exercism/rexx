@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\grade-school-check ..\grade-school ..\grade-school-toplevel grade-school-funcs
@cd ..
