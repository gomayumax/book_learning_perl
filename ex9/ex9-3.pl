#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

# 問題 2 のプログラムを改造して、Fred をすべて Wilma に変え、Wilma をすべて Fred に変 えるようにしてください。例えば、入力中の fred&wilma は、出力では Wilma&Fred になって いるはずです。
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
if (! open $in_fh, '<', $in ) {
    die "Can't open '$in': $!";
}
if (! open $out_fh, '>', $out ) {
    die "Can't write '$out': $!";
}
while (<$in_fh>) {
    chomp;
    s/(Fred)/\U$1/gi;
    s/Wilma/Fred/gi;
    s/FRED/Wilma/g;
    print $out_fh $_ . "\n";
}
