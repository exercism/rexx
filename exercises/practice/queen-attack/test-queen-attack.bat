@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% queen-attack-check queen-attack queen-attack-toplevel
