#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 数のリストを(1 行に 1 個ずつ)入力の終わりになるまで読み込んで、以下に示す人名 のリストから、数に対応する人名を表示するプログラムを書いてください(この人名のリスト は、プログラム中にハードコードしてください。つまり、プログラムのソースコードの中に、 人名のリストが直接書かれていることになります)。例えば、入力された番号が 1、2、4、2 だ とすると、出力される名前は fred、betty、dino、betty となります。
# fred betty barney dino wilma pebbles bamm-bamm

my @numbers = <STDIN>;
my @name_list = qw/fred betty barney dino wilma pebbles bamm-bamm/;

for my $num (@numbers) {
    print $name_list[$num] . "\t";
}
