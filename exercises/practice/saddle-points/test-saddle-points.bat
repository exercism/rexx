@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% saddle-points-check saddle-points saddle-points-toplevel
