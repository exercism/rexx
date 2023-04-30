@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% grade-school-check grade-school grade-school-toplevel
