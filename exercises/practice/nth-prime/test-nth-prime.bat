@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\nth-prime-check ..\nth-prime ..\nth-prime-toplevel nth-prime-funcs
@cd ..
