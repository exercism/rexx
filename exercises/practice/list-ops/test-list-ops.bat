@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% list-ops-check list-ops list-ops-toplevel
