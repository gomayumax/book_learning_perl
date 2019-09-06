#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# ユーザから名前を入力してもらって、その人の姓を表示するプログラムを書いてくださ い。あなたの知り合いの姓と名前を使うか、あるいは(コンピュータにハマりすぎて知り合い がいない人は)表 6-1 に示すデータを使ってください。

my %last_name = (
  fred => 'flintstone',
  wilma => 'flintstone',
  banry => 'rubble',
);


say 'first_name is: ';
chomp(my $frist_name = <STDIN>);

print $last_name{$frist_name};
