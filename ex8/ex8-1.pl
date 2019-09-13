#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# パターンテストプログラムを使って、文字列 match にマッチするパターンを作ってくだ さい。プログラムに、文字列 beforematchafter を入力として与えてください。プログラムの 出力には、マッチの 3 つの部分が正しい順番で表示されていますか?
while (<>) {                   # take one input line at a time
    chomp;
    if (/match/) {
        print "Matched: |$`<$&>$'|\n";  # the special match vars
    } else {
        print "No match: |$_|\n";
    }
}
