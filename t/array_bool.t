#!/usr/bin/env perl6

use v6;
use Inline::Perl5;

use Test;

my $p5 = Inline::Perl5.new;
my Bool $empty = $p5.run(q/[]/).Bool;
my Bool $non-empty = $p5.run(q/[1]/).Bool;
ok $empty eqv False,                'Empty array is False';
ok $p5.run(q/[]/).Bool eqv False,   'Second empty array is False';
ok $non-empty eqv True,             'Non-empty array is True';

done-testing;
