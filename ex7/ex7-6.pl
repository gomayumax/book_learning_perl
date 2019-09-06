#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 追加点用の問題:読み込んだ行のうち、wilma と fred の両方を含む行をすべて表示する プログラムを書いてください。

my $fh;
open $fh, '<', 'sample.txt';
while (<$fh>) {
    if (/wilma/ && /fred/) {
        print $_;
    }
}

