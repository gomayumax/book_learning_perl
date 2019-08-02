#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 文字列のリストを(1 行に 1 個ずつ)入力の終わりになるまで読み込んで、そのリストを 逆順に表示するプログラムを書いてください。

my @words = <STDIN>;
print reverse @words;
