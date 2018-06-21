#!/usr/bin/env perl6

use v6;
use Inline::Perl5;

use Test;

my $a = EVAL q/[]/, :lang<Perl5>;
my $b = EVAL q/[]/, :lang<Perl5>;

is $a.elems, 0, 'First EVAL gives empty array';
is $b.elems, 0, 'Second EVAL gives empty array';

done-testing;
