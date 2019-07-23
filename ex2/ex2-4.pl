#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# プロンプトを表示して、数を 2 個読み込んで(1 行に 1 個ずつ別々に読み込みます)、そ れらの積を表示するプログラムを書いてください
my $n = <STDIN>;
my $m = <STDIN>;
say $n * $m;
