@set options=%*
@if "%1"=="" @set options=--regina
cd "testlib"
@call runt.bat %options% ..\rna-transcription-check ..\rna-transcription ..\rna-transcription-toplevel
cd ..
