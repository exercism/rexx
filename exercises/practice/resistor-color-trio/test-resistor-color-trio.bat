@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% resistor-color-trio-check resistor-color-trio resistor-color-trio-toplevel
