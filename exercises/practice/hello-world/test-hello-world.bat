@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% hello-world-check hello-world hello-world-toplevel
