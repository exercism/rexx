@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% rna-transcription-check rna-transcription rna-transcription-toplevel
