#!/usr/bin/perl
use v5.10;
use warnings;
use strict;
use List::Util qw(max);

# 読み込んだ行のうち、fred が含まれている行をすべて表示するプログラムを書いてく ださい(それ以外の行については、何もしません)。入力文字列として Fred や frederick や Alfred を与えるとマッチしますか?“fred flintstone”とその友人の名前が入った、数行の小 さなテキストファイルを作って、それをこのプログラムに入力として与えてください。この ファイルは残りの問題のプログラムでも使います。

my $fh;
open $fh, '<', 'sample.txt';
while (<$fh>) {
    if (/fred/) {
        print $_;
    }
}

