#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 人の名前を渡すと、その人に挨拶するサブルーチン greet を書いてください。挨拶の際には、最後に会った人の名前も知らせるようにしてください。

greet( "Fred" );
greet( "Barney" );


sub greet {
    my ($name) = @_;
    state $last_meet;

    if ($last_meet) {
        say 'Hi '. $name .'! ' . $last_meet .  ' is also here!';
    } else {
        say 'Hi '. $name  .'! You are the first one here!';
    }

    $last_meet = $name;
    1;
}
