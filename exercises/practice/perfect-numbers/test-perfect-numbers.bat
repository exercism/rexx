@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% perfect-numbers-check perfect-numbers perfect-numbers-toplevel
