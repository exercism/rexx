@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% reverse-string-check reverse-string reverse-string-toplevel
