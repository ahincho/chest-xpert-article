@echo off
REM Compilation script for CheXpert AI LaTeX article
REM Requires: MiKTeX with pdflatex

set LOG=compile.log
del /f /q %LOG% 2>nul

echo.
echo Compiling Chest Xpert AI article

echo Pass 1 (pdflatex)...
pdflatex -interaction=nonstopmode -synctex=1 main.tex >> %LOG% 2>&1
if errorlevel 1 ( echo FAILED - see %LOG% & exit /b 1 )
echo Pass 1

echo Bibliography (bibtex)
bibtex main >> %LOG% 2>&1
if errorlevel 1 ( echo FAILED - see %LOG% & exit /b 1 )
echo Bibliography

echo Pass 2 (pdflatex)
pdflatex -interaction=nonstopmode -synctex=1 main.tex >> %LOG% 2>&1
if errorlevel 1 ( echo FAILED - see %LOG% & exit /b 1 )
echo Pass 2

echo Pass 3 (pdflatex)
pdflatex -interaction=nonstopmode -synctex=1 main.tex >> %LOG% 2>&1
if errorlevel 1 ( echo FAILED - see %LOG% & exit /b 1 )
echo Pass 3

echo Cleaning auxiliary files
del /f /q *.aux *.bbl *.blg *.fdb_latexmk *.fls *.log *.out *.run.xml *.synctex.gz *.toc *.lof *.lot 2>nul

echo.
echo Done! Output: main.pdf
echo.
