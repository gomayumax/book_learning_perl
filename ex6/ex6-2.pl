#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 一連の単語を(1 行に 1 個ずつ)ファイルの終わりになるまで読み込んで、各単語が何 回出現したかを表示するプログラムを書いてください(ヒント:未定義値を数値のように扱う と、Perl は自動的にそれを 0 に変換してくれることを思い出しましょう。出現回数をカウン トする部分は、これまでの練習問題が参考になるでしょう)。ですから、もし入力した単語が fred、barney、fred、dino、wilma、fred(すべてを別々の行で与えます)だとしたら、出力 では fred が 3 回現れたことが示されるはずです。追加点が欲しい人は、単語をコードポイン ト順にソートして表示してください。

my %word_count;
while(chomp(my $word = <STDIN>)){
    $word_count{$word}++;
}

for my $word (sort keys %word_count) {
    printf "%s : %d \n", $word, $word_count{$word};
}
