#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 問題 2 のプログラムを改造して、ユーザが 0 より小さい数を入力した場合には、円周と して、(負の値ではなく)0 を表示するようにしてください。

my $half_circle = <STDIN>;
my $pi = 3.1415926535;

if ($half_circle < 0) {
    say 0;
} else {
    say 2 * $pi * $half_circle;
}
