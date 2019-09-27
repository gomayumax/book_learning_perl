#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 1 から 100 までの間から選んだ秘密の数を、ユーザに当ててもらうプログラムを書いて ください。このプログラムは、入力した数が当たるまで、ユーザに何回でも繰り返し入力を 求めます。乱数を得るにはint(1 + rand 100)という魔法の式を使ってください。int関数 と rand 関数について興味がある人は、perlfunc ドキュメントを調べてみましょう。ユーザが 入力した数が当たらなかったら、「Too high」(大きすぎる)または「Too low」(小さすぎる) と表示するようにします。もしユーザが quit または exit と入力したり、空行を入力したら、 プログラムを終了させてください。もちろん、数が当たったときにも、プログラムを終了させ てください。

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

