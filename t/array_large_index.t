#!/usr/bin/env perl6

use v6;
use Inline::Perl5;

use Test;

# test for p5_av_top_index
my $p5 = Inline::Perl5.new;
note q/Version /, $p5.run('$]');
$p5.run(q/my $ary = [ 'First' ]; $ary->[2**31] = 'Last';/);
is $p5.run(q/$ary/).elems, 2**31+1, 'Index crosses 32-bit boundary OK';

done-testing;

