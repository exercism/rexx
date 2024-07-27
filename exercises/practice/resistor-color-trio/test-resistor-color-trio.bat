@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\resistor-color-trio-check ..\resistor-color-trio ..\resistor-color-trio-toplevel resistor-color-trio-funcs
@cd ..
