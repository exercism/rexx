@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% simple-cipher-check simple-cipher simple-cipher-toplevel
