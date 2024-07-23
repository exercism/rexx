@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\nucleotide-count-check ..\nucleotide-count ..\nucleotide-count-toplevel
cd ..
