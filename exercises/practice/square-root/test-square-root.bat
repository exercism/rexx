@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% square-root-check square-root square-root-toplevel
