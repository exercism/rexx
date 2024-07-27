@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\atbash-cipher-check ..\atbash-cipher ..\atbash-cipher-toplevel atbash-cipher-funcs
@cd ..
