@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\secret-handshake-check ..\secret-handshake ..\secret-handshake-toplevel
cd ..
