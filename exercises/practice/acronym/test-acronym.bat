@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% acronym-check acronym acronym-toplevel
