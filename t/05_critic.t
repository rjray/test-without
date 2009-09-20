#!/usr/bin/perl

# Test that the module passes perlcritic
use strict;
BEGIN
{
    $|  = 1;
    $^W = 1;

    use Test::More;
    unless ($ENV{AUTOMATED_TESTING} or $ENV{RELEASE_TESTING})
    {
        plan skip_all => "Author tests not required for installation";
    }
    else
    {
        eval "use Perl::Critic;";
        eval "use Test::Perl::Critic;";
    }
}

all_critic_ok();

exit;
