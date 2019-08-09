#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 数のリストを受け取って、その中から平均よりも大きなもののリスト を返すサブルーチン &above_average を書いてください(ヒント:数の合計を個数で割って平 均を計算する、別のサブルーチンを作りましょう)。作成したサブルーチンを、以下のテスト プログラムに入れて動かしてみましょう。

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10); print "\@barney is @barney\n";
print "(Should be just 100)\n";

sub above_average {
    my @list = @_;
    my $avg = average(@list);
    map { $_ if $avg < $_ } @list;
}


sub average {
    my @list = @_;
    my $sum = 0;
    $sum += $_ for(@list);
    $sum/($#list+1);
}
