@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\anagram-check ..\anagram ..\anagram-toplevel anagram-funcs
@cd ..
