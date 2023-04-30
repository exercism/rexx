@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% atbash-cipher-check atbash-cipher atbash-cipher-toplevel
