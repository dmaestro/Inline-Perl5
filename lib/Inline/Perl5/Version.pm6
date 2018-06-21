use v6;

unit class Inline::Perl5::Version;

method perl5() {
    my $file = %?RESOURCES<version/libperl>.open;
    return $file unless $file; # return failure
    state $version //= Version.new:
        $file.lines.head
        .subst(/^v/,''); # strip the leadin 'v'
}
