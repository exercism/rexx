@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% raindrops-check raindrops raindrops-toplevel
