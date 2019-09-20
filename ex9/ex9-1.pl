#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 7]$what の内容が 3 回連続して現れるものにマッチするパターンを書いてください。つまり、 もし $what の値が fred だったら、そのパターンは fredfredfred にマッチしなければなりませ ん。もし $what が fred|barney だったら、そのパターンは fredfredbarney や barneyfredfred や barneybarneybarney やその他多数のバリエーションにマッチしなければなりません(ヒン ト:パターンテストプログラムの先頭で、my $what = 'fred|barney';のような文で$whatの 値をセットしましょう)。

my $word = 'fred';

while (<STDIN>) {
    chomp;
    if ($_ =~ /($word){3,}/) {
        say 'match!';
    }
}

