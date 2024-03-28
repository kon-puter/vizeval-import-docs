$pdf_mode = 4;
$postscript_mode = $dvi_mode = 0;

@default_files = ('main.tex');
$lualatex = 'lualatex --shell-escape -synctex=1 -interaction=nonstopmode %O %S';
