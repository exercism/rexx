@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\rotational-cipher-check ..\rotational-cipher ..\rotational-cipher-toplevel
cd ..
