@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% phone-number-check phone-number phone-number-toplevel
