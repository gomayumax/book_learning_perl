#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# テキストファイルをもとに、修正を加えたコピーを作成するプログラムを書いてくださ い。作成されたコピーでは、文字列 Fred(大文字小文字は区別しません)はすべて Larry に 置き換えられているようにします(つまり、Manfred Mannは、ManLarry Mannになっている はずです)。入力ファイルの名前はコマンドラインから指定するようにしてください(ユーザ から対話的に入力してもらってはいけません)。出力ファイルの名前は、入力ファイル名に対 応した .out で終わる名前にしてください。

#my $filename = $ARGV[0] // die;
#my $out_filename = $filename . '.out';
#
#open IN_FH, '<', $filename // say $filename . 'can not open.';
#open OUT_FH, '>', $out_filename // say $out_filename . 'can not open';

#while (<IN_FH>) {
#    s/Fred/Larry/g;
#    print <OUT_FH>, $_;
    #}
#
my $in = $ARGV[0];
if (! defined $in) {
die "Usage: $0 filename"; }
my $out = $in;
$out =~ s/(\.\w+)?$/.out/;
my ($in_fh, $out_fh);
if (! open $in_fh, '<', $in ) { die "Can't open '$in': $!";
}
if (! open $out_fh, '>', $out ) { die "Can't write '$out': $!";
}
while (<$in_fh>) { s/Fred/Larry/gi; print $out_fh $_;
}
