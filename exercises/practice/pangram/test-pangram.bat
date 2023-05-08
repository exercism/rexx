@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% pangram-check pangram pangram-toplevel
