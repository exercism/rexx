@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\simple-cipher-check ..\simple-cipher ..\simple-cipher-toplevel
@cd ..
