@set options=%*
@if "%1"=="" @set options=--regina
@runt.bat %options% nucleotide-count-check nucleotide-count nucleotide-count-toplevel
