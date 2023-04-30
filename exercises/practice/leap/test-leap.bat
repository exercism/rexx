@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% leap-check leap leap-toplevel
