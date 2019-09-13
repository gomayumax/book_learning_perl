#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 問題 2 のプログラムを改造して、文字 a で終わるワードを $1 にキャプチャするようにし てください。コードを書き換えて、変数 $1 の内容をシングルクォートで囲んで表示するよう にしてください─ 例えば、$1 contains 'Wilma' のように表示します。。
my $fh;
open $fh, '<', '../ex7/sample.txt';
while (<$fh>) {
    chomp;
    if (/\b(?<word>\w*a)\b/) {
        #print "Matched: |$`<$&>$'|\n";  # the special match vars
        print "\$1 contains '$+{word}'\n";
        #} else {
        #print "No match: |$_|\n";
    }
}
