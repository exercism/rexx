@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% high-scores-check high-scores high-scores-toplevel
