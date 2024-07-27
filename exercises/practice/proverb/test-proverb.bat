@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\proverb-check ..\proverb ..\proverb-toplevel proverb-funcs
@cd ..
