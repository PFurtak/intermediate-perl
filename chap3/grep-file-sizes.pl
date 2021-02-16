#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;
use File::Stat;

# Write a program that takes a list of filenames on the
# command line and uses grep to select the ones whose size
# is less than 1,000 bytes. Use map to transform the strings
# in this list, putting four space characters in front of 
# each and a newline character after. Print the resulting list.

my @files = @ARGV;
my @small_files = grep { (stat($_))[7] < 1000 } @files;
my @result = map $_ = "    " . $_ . "\n", @small_files;

print @result;

# book example:
# print map {"    $_\n"} grep {-s < 1000} @ARGV; # used file test -s instead of stat