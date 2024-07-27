@set options=%*
@if "%1"=="" @set options=--regina
@cd "testlib"
@call runt.bat %options% ..\binary-search-check ..\binary-search ..\binary-search-toplevel binary-search-funcs
@cd ..
