@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% collatz-conjecture-check collatz-conjecture collatz-conjecture-toplevel
