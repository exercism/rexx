@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\raindrops-check ..\raindrops ..\raindrops-toplevel
@cd ..
