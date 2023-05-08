@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% bob-check bob bob-toplevel
