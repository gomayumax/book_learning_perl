#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 数値のリストを受け取って、その合計を返すサブルーチン total を書いてください。(ヒ ント:このサブルーチンでは、I/O を行ってはいけません。受け取ったパラメータを処理して 値を返すようにしてください。)書き上げたサブルーチンを、以下に示すサンプルプログラム に入れて、動かしてみましょう。このプログラムは、サブルーチンを呼び出して、動作するこ とを確認するだけのものです。最初の呼び出しで渡した数値のリストの和は、25 になるはず です。
my @fred = qw{ 1 3 5 7 9 };
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
#print "Enter some numbers on separate lines: ";
# my $user_total = total(<STDIN>);
# print "The total of those numbers is $user_total.\n";


sub total {
    my $sum = 0;
    $sum += $_ for (@_);
    $sum;
}
