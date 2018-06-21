#!/usr/bin/env perl6

use v6;
use Inline::Perl5;
use Inline::Perl5::Version;

use Test;

is
    Inline::Perl5.new.run(q/$^V/),
    Inline::Perl5::Version.perl5.gist,
    'Running the expected interpreter version';

done-testing;
