@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% bank-account-check bank-account bank-account-toplevel
