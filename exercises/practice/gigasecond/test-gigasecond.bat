@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\gigasecond-check ..\gigasecond ..\gigasecond-toplevel
cd ..
