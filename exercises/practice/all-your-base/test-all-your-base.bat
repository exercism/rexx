@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% all-your-base-check all-your-base all-your-base-toplevel
