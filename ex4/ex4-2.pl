#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 問題 1 で作成したサブルーチンを使用して、1 から 1,000 までの合計を求めるプログラム を書いてください。
my $fred_total = total((1..1000));
print "The total of \@fred is $fred_total.\n";
#print "Enter some numbers on separate lines: ";
# my $user_total = total(<STDIN>);
# print "The total of those numbers is $user_total.\n";


sub total {
    my $sum = 0;
    $sum += $_ for (@_);
    $sum;
}
