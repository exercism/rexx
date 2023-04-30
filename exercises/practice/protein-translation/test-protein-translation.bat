@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% protein-translation-check protein-translation protein-translation-toplevel
