@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% matrix-check matrix matrix-toplevel
