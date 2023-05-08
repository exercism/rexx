@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% ocr-numbers-check ocr-numbers ocr-numbers-toplevel
