@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% sum-of-multiples-check sum-of-multiples sum-of-multiples-toplevel
