#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 入力した行のうち、行末に(改行文字以外の)空白文字がある行をすべて表示する新し いプログラム(テストプログラムではありません!)を書いてください。出力する行の末尾に は、何か目印になる文字を表示して、空白文字が存在することがわかるようにしましょう。。
while (<STDIN>) {
    chomp;
    if (/\s\Z/) {
        print "$_*\n";
    }
}

