#!/usr/bin/perl
use v5.10;
use warnings;
use strict;
use List::Util qw(max);

# 問題 1 のプログラムに手を加えて、Fred にもマッチするようにしてください。今度は、 入力文字列に Fred や frederick や Alfred を与えるとマッチしますか?(テキストファイル に、これらの名前が入った行を追加しましょう。)
my $fh;
open $fh, '<', 'sample.txt';
while (<$fh>) {
    if (/(f|F)red/) {
        print $_;
    }
}

