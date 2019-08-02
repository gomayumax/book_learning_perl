#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 文字列のリストを(1 行に 1 個ずつ)入力の終わりになるまで読み込んで、読み込んだ 文字列をコードポイント順に表示するプログラムを書いてください。つまり、文字列 fred、 barney、wilma、bettyを入力したら、出力ではbarney betty fred wilmaの順に表示される はずです。すべての文字列が 1 行に出力されますか、それとも別々の行に出力されますか。 出力を両方のスタイルで表示できますか?

chomp(my @words = <STDIN>);

# 一行で表示される
print sort @words;


#for my $word (sort @words) {
#    print $word . "\n";
#}
