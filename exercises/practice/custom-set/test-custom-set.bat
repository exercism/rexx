@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% custom-set-check custom-set custom-set-toplevel
