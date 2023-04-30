@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% rotational-cipher-check rotational-cipher rotational-cipher-toplevel
