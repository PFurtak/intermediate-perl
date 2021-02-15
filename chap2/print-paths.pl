#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;
use File::Spec;
use Cwd;

# Read the list of files in the current directory and convert
# the names to their full path specification. Don’t use the 
# shell or an external program to get the current directory.
# The File::Spec and Cwd modules, both of which come with Perl,
# should help. Print each path with four spaces before it 
# and a newline after it.

my $current_dir = getcwd;

opendir my $dh, $current_dir or die "Could not open $current_dir";

while (my $file = readdir $dh) {
    next if $file eq '.' or $file eq '..';
    my $full_path = File::Spec->catfile($current_dir, $file);
    print "    ", $full_path, "\n";
}

close $dh;