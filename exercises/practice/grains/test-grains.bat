@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% grains-check grains grains-toplevel
