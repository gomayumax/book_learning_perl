#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# パターンテストプログラムを使って、ワード(\w が意味する「ワード」)のどれかが a で 終わっていたらマッチするようなパターンを作ってください。このパターンは wilma にはマッ チして、barneyにはマッチしないでしょうか。Mrs. Wilma Flintstoneにはマッチしますか。 wilma&fred ではどうでしょうか。7 章の練習問題で使ったサンプルテキストファイル(まだ これらの文字列を追加していなければ、追加してください)を入力として与えてみてくださ い。
my $fh;
open $fh, '<', '../ex7/sample.txt';
while (<$fh>) {
    chomp;
    if (/\b\w*a\b/) {
        print "Matched: |$`<$&>$'|\n";  # the special match vars
    } else {
        print "No match: |$_|\n";
    }
}
