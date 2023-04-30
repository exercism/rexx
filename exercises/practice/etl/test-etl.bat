@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% etl-check etl etl-toplevel
