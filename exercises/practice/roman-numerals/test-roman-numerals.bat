@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% roman-numerals-check roman-numerals roman-numerals-toplevel
