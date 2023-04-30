@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% gigasecond-check gigasecond gigasecond-toplevel
