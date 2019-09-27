#!/usr/bin/perl
use v5.10;
use warnings;
use strict;
use List::Util qw(max);

# %ENV のすべてのキーとその値を表示するプログラムを書いてください。結果は 2 カラム で ASCII コード順で表示するようにします。追加点が欲しい人は、出力する際に 2 つのカラ ムが縦に揃うようにしてください。最初のカラムの幅を決める際には、length 関数が役に立 つでしょう。プログラムが動くようになったら、新しい環境変数を何個かセットして、それら もちゃんと表示されることを確認しましょう。
# 6 章の問題 3 のプログラム(環境変数を表示するもの)を改造して、値を持っていない 環境変数については(undefined value)と表示するようにしてください。プログラムの中で、 新しい環境変数をセットすることができます。値が偽であるような環境変数に対して、正しい 表示をするように注意しましょう。Perl 5.10 以降を利用している人は // 演算子を使ってくだ さい。そうでない人は、条件演算子を使ってください。


$ENV{ZERO} = 0;
$ENV{EMPTY} = '';
$ENV{UNDEFINED} = undef;

my $length_list = [map {length($_)} keys %ENV];
my $width = max @$length_list;

print $width;

my $printf = '%' . $width . "s: %s \n";

print  $printf;
for my $key (sort keys %ENV) {
    if (defined $ENV{$key}) {
      printf $printf, $key, $ENV{$key};
    } else {
      printf $printf, $key, 'undefined value';
    }
}
