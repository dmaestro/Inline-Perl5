#!/usr/bin/env perl6

use v6;
use Inline::Perl5;

use Test;

my $p5 = Inline::Perl5.new;
is $p5.run(q/[]/).elems, 0, 'First run() gives empty array';
is $p5.run(q/[]/).elems, 0, 'Second run() gives empty array';

done-testing;
