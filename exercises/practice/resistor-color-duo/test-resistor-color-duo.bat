@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% resistor-color-duo-check resistor-color-duo resistor-color-duo-toplevel
