@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% scrabble-score-check scrabble-score scrabble-score-toplevel
