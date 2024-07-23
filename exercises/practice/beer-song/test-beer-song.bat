@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\beer-song-check ..\beer-song ..\beer-song-toplevel
cd ..
