#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;
use File::Basename;
use File::Spec;
use Math::BigInt;

my $filepath = '/Users/patrickfurtak/Desktop/courses/intermediate-perl/extras/basename.pl';

my $basename = basename($filepath);
my $dirname = dirname($filepath);

say "base: $basename";
say "dir: $dirname";

my $path = File::Spec->catfile($dirname, $basename);

say "path: $path";

my $value = Math::BigInt->new(2);

$value ->bpow(1000);

print $value->bstr, "\n";
