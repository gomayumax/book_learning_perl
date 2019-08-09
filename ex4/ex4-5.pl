#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 問題 4 のプログラムを改造して、新しく会った人に、それまでに挨拶した全員の名前を 知らせるようにしてください。

greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );

sub greet {
    my ($name) = @_;
    state @met_list;

    if (@met_list) {
        say "Hi $name! I've seen: @met_list";
    } else {
        say 'Hi '. $name  .'! You are the first one here!';
    }

    push @met_list, $name;
    1;
}
