@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% armstrong-numbers-check armstrong-numbers armstrong-numbers-toplevel
