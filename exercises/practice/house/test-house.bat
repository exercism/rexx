@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% house-check house house-toplevel
