@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\collatz-conjecture-check ..\collatz-conjecture ..\collatz-conjecture-toplevel
cd ..
