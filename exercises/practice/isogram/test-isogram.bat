@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% isogram-check isogram isogram-toplevel
