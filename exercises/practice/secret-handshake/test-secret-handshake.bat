@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% secret-handshake-check secret-handshake secret-handshake-toplevel
