#!/usr/bin/env perl

# 基本設定、使うエンジンなど
$pdf_mode = 3;
$latex = 'uplatex %O -synctex=1 -interaction=nonstopmode -kanji=utf8 -file-line-error %S';
$bibtex = 'upbibtex %O %B';
$makeindex = 'upmendex %O -o %D %S';
$dvipdf = 'dvipdfmx %O -o %D %S';

# 中間ファイルの自動削除
$cleanup_mode = 2;
$clean_ext = 'synctex.gz synctex.gz(busy) acn acr alg aux bbl bcf blg fdb_latexmk fls glg glo gls idx ilg ind ist lof log lot out run.xml toc dvi';
$success_cmd = 'latexmk -c %S';

# 高速化設定
$max_repeat = 5;  # 無限ループ防止
$pvc_view_file_via_temporary = 0;  # 一時ファイル経由を無効化