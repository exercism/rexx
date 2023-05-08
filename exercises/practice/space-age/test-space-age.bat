@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% space-age-check space-age space-age-toplevel
