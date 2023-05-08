@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% prime-factors-check prime-factors prime-factors-toplevel
