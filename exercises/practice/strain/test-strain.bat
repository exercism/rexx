@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% strain-check strain strain-toplevel
