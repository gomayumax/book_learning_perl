#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 問題 2 のプログラムを改造して、ユーザがカラムの幅を指定できるようにしてください。 例えば、30、hello、good-bye を(それぞれ別の行に)入力すると、30 文字幅のカラムに右 寄せで表示します

say 'haba: ';
chomp(my $haba = <STDIN>);
say 'words: ';
chomp(my @lines = <STDIN>);

say +(1..9) x ($haba/2);

my $printf = '%' . $haba ."s\n";

foreach (@lines) {
    printf $printf, $_;
}
