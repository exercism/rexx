@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% triangle-check triangle triangle-toplevel
