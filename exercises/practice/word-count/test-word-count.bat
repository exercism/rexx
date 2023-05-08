@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% word-count-check word-count word-count-toplevel
