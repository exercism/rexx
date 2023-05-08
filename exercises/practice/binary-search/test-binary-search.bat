@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% binary-search-check binary-search binary-search-toplevel
