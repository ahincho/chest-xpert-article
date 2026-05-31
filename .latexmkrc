# Configuración de latexmk para compilación con biber (Bibliografía APA)
$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';
$biber = 'biber %O %S';
$clean_ext = 'bbl bcf blg run.xml synctex.gz';
