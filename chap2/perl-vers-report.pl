#!/usr/bin/perl
use warnings;
use diagnostics;
use local::lib;
use Module::CoreList;

# Install the local::lib module and use it when you install Module::CoreList
# (or another module if you like). Write a program that reports the name and
# first release date for all the modules in Perl v5.14.2.

my @modules = sort keys $Module::CoreList::version{5.014002};

my $max_length = 0;
foreach $module (@modules) {
    $max_length = length $module if length $module > $max_length;
}

foreach my $module (@modules) {
    printf "%*s %s\n", - $max_length, $module, Module::CoreList->first_release($module);
}

