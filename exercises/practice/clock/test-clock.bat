@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% clock-check clock clock-toplevel
