#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 問題 1 のプログラムを改造して、プログラムの進行に応じてデバッグ情報(例えば、秘 密の数)を表示するようにしてください。また、このデバッグ情報の表示をオフにできるよう にしてください。オフにしたときには、警告メッセージが表示されないようにしてください。 Perl 5.10 以降を利用している人は // 演算子を使ってください。そうでない人は、条件演算子 を使ってください。

my $debug = $ENV{DEBUG} // 1;

my $result = int(1 + rand 100);

while (<STDIN>) {
    chomp;

    if ($_ eq 'quit' || $_ eq 'exit' || $_ eq '') {
        last;
    }

    if ($_ eq $result) {
        say "success!!";
        last;
    }
    say "Too high" if $_ > $result;
    say "Too low" if $_ < $result;
}

say 'Debug infomation' if $debug;

