@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% isbn-verifier-check isbn-verifier isbn-verifier-toplevel
