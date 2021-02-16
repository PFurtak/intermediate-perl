#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# Write a program that asks the user to enter a pattern 
# (regular expression). Read this as data from standard
# input; don’t get it from the command line arguments. 
# Report a list of files in some hardcoded directory 
# (such as "/etc" or 'C:\\Windows') whose names match 
# the pattern. Repeat this until the user enters an 
# empty string instead of a pattern. The user should 
# not type the slashes tradi- tionally used to delimit
# pattern matches in Perl; the input pattern is delimited
# by the trailing newline. Ensure that a faulty pattern, 
# such as one with unbalanced parentheses, doesn’t crash
# the program.

chdir;

while (1) {
    print "Please enter your regular expression> "; chomp(my $regex = <STDIN>);
    last unless(defined $regex && length $regex);
    print map {" $_\n"} grep { eval{/$regex/i}} glob(".* *");
}