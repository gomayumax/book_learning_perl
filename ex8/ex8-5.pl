#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 追加点用の問題:問題 4 のプログラムを改造して、文字 a で終わるワードの直後に続 く最大 5 文字を別のキャプチャ変数にキャプチャするようにしてください。コードを書き換 えて、両方のキャプチャ変数を表示するようにしてください。例えば、入力文字列がI saw Wilma yesterday だったら、最大 5 文字は「 yest」(先頭にスペースがあります)になります。 もし入力文字列がI, Wilma!だったら、追加したキャプチャ変数は1文字だけを記憶するは ずです。あなたが書いたパターンは、これまでと同様に、単なる wilma にもマッチしますか?。
#
$_ = 'I saw Wilma yesterday';
if (/\b(\w*a)\b(.{1,5})/) {
    print "\$1 contains '$1' and '$2'\n";
}
