@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\twelve-days-check ..\twelve-days ..\twelve-days-toplevel twelve-days-funcs
@cd ..
