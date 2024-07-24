@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\protein-translation-check ..\protein-translation ..\protein-translation-toplevel
@cd ..
