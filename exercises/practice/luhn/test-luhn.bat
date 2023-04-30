@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% luhn-check luhn luhn-toplevel
