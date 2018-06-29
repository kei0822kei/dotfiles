#!/usr/bin/env perl
# $latex            = 'platex -synctex=1 -halt-on-error';
# $bibtex           = 'pbibtex';
# $biber            = 'biber  -u -U --output_safechars';
# $dvipdf           = 'dvipdfmx %O -o %D %S';
# $makeindex        = 'mendex %O -o %D %S';
# $max_repeat       = 5;
# $pdf_mode         = 3;
# $pvc_view_file_via_temporary = 0;

$latex = 'platex -interaction=nonstopmode -kanji=utf-8 %O %S';
$dvipdf = 'dvipdfmx %O -o %D %S';
$bibtex = 'pbibtex';
$pdf_mode = 3; # use dvipdf
$pdf_update_method = 2;
$pdf_previewer = "start mupdf %O %S";
# Prevent latexmk from removing PDF after typeset.
# $pvc_view_file_via_temporary = 0;
