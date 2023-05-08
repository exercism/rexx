@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% error-handling-check error-handling error-handling-toplevel
