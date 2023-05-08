@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% nth-prime-check nth-prime nth-prime-toplevel
