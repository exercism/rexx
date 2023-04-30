@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% anagram-check anagram anagram-toplevel
