#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# cat のような振る舞いをするプログラムを書いてください。ただし、このプログラムは、 行を逆順に出力します

my @reverse_argv = reverse @ARGV;

for my $file_name (@reverse_argv) {
    my $fh;
    open $fh, '<', $file_name;
    my @lines;
    while (<$fh>) {
        push @lines, $_;
    }
    print reverse @lines;
}
