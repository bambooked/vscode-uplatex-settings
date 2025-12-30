#!/usr/bin/env perl

# 基本設定、使うエンジンなど
$pdf_mode = 3;
$latex = 'uplatex %O -synctex=1 -interaction=nonstopmode -kanji=utf8 -file-line-error %S';
$bibtex = 'upbibtex %O %B';
$makeindex = 'upmendex %O -o %D %S';
$dvipdf = 'dvipdfmx %O -o %D %S';

# 中間ファイルをまとめる。
$aux_dir = '.build';