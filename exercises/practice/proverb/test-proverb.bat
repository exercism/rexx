@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% proverb-check proverb proverb-toplevel
