@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% darts-check darts darts-toplevel
