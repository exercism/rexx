@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% series-check series series-toplevel
