@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% two-fer-check two-fer two-fer-toplevel
