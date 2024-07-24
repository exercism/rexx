@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\word-count-check ..\word-count ..\word-count-toplevel
@cd ..
