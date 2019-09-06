#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 読み込んだ行のうち、同じ文字(空白文字を除く)が 2 個連続している行をすべて表示 するプログラムを書いてください。このプログラムは、Mississippi、Bamm-Bamm、llama のよ うな単語を含む行にマッチするはずです。

 my $fh;
open $fh, '<', 'sample.txt';
while (<$fh>) {
    if (/(\S)\g{1}/) {
        print $_;
    }
}

