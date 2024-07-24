@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\resistor-color-check ..\resistor-color ..\resistor-color-toplevel
@cd ..
