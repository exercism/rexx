@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% beer-song-check beer-song beer-song-toplevel
