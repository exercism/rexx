@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\ocr-numbers-check ..\ocr-numbers ..\ocr-numbers-toplevel
@cd ..
