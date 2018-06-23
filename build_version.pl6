use v6;

use lib 'lib';
use Inline::Perl5;
with @*ARGS[0].IO {
    .parent.mkdir;
    .spurt: Inline::Perl5.new.run(q/$^V/)~"\n";
}
