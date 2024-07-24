@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\isbn-verifier-check ..\isbn-verifier ..\isbn-verifier-toplevel
@cd ..
