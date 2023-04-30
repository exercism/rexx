@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% sieve-check sieve sieve-toplevel
