#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 読み込んだ行のうち、先頭だけが大文字になっている単語(全部が大文字ではダメです) を含んでいる行をすべて表示するプログラムを書いてください。このプログラムは、Fred に はマッチして、fred や FRED にはマッチしないことを確かめましょう。
my $fh;
open $fh, '<', 'sample.txt';
while (<$fh>) {
    if (/\b[A-Z][a-z]+\b/) {
        print $_;
    }
}

