#!/usr/bin/perl
use v5.10;
use warnings;
use strict;
use List::Util qw(max);

# %ENV のすべてのキーとその値を表示するプログラムを書いてください。結果は 2 カラム で ASCII コード順で表示するようにします。追加点が欲しい人は、出力する際に 2 つのカラ ムが縦に揃うようにしてください。最初のカラムの幅を決める際には、length 関数が役に立 つでしょう。プログラムが動くようになったら、新しい環境変数を何個かセットして、それら もちゃんと表示されることを確認しましょう。

my $length_list = [map {length($_)} keys %ENV];
my $width = max @$length_list;

print $width;

my $printf = '%' . $width . "s: %s \n";

print  $printf;
for my $key (sort keys %ENV) {
    printf $printf, $key, $ENV{$key};
}
