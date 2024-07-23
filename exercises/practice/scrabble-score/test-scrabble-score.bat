@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\scrabble-score-check ..\scrabble-score ..\scrabble-score-toplevel
cd ..
