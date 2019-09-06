#!/usr/bin/perl
use v5.10;
use warnings;
use strict;
use List::Util qw(max);

# 読み込んだ行のうち、ピリオド(.)を含んでいる行をすべて表示し、それ以外の行は無 視するプログラムを書いてください。このプログラムに、問題 2 で使ったテキストファイル を与えて動かしてみてください。Mr. Slateは表示されましたか?
my $fh;
open $fh, '<', 'sample.txt';
while (<$fh>) {
    if (/\./) {
        print $_;
    }
}

