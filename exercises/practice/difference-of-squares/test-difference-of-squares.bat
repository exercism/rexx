@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% difference-of-squares-check difference-of-squares difference-of-squares-toplevel
