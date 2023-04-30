@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% resistor-color-check resistor-color resistor-color-toplevel
