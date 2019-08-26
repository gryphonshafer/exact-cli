package exact::cli;
# ABSTRACT: Command-line interface helper utilities extension for exact

use 5.010;
use exact;
use strict;
use Util::CommandLine 1.04 ();

# VERSION

sub import {
    my ( $self, $caller ) = @_;
    $caller //= caller();

    my @methods = qw( options pod2usage readmode singleton );
    {
        no strict 'refs';
        for (@methods) {
            my $method = "Util::CommandLine::$_";
            *{ $caller . '::' . $_ } = \&$method unless ( defined &{ $caller . '::' . $_ } );
        }

        for ('podhelp') {
            *{ $caller . '::' . $_ } = \&$_ unless ( defined &{ $caller . '::' . $_ } );
        }
    }
}

sub podhelp {
    Util::CommandLine::options();
}

1;
__END__
=pod

=begin :badges

=for markdown
[![Build Status](https://travis-ci.org/gryphonshafer/exact-cli.svg)](https://travis-ci.org/gryphonshafer/exact-cli)
[![Coverage Status](https://coveralls.io/repos/gryphonshafer/exact-cli/badge.png)](https://coveralls.io/r/gryphonshafer/exact-cli)

=end :badges

=head1 SYNOPSIS

    use exact -cli;

=head1 DESCRIPTION

L<exact::cli> is command-line interface helper utilities extension for L<exact>.
It effectively is an integration of L<Util::CommandLine> with L<exact>.
Consult the L<Util::CommandLine> documentation for additional information.
See the L<exact> documentation for additional informatioh about
extensions. The intended use of L<exact::cli> is via the extension interface
of L<exact>.

    use exact -cli, -conf, -noutf8;

However, you can also use it directly, which will also use L<exact> with
default options:

    use exact::cli;

=head1 IMPORTED FUNCTIONS

The following functions are imported:

=head2 options

This is the same function from L<Util::CommandLine>.

=head2 pod2usage

This is the same function from L<Util::CommandLine>.

=head2 readmode

This is the same function from L<Util::CommandLine>.

=head2 singleton

This function is the equivalent of the C<singleton> flag to L<Util::CommandLine>.

    use Util::CommandLine 'singleton';

However, note that calling this method executes the functionally at runtime, not
during import, which is normally what happens with L<Util::CommandLine>.

=head2 podhelp

This function is the equivalent of the C<podhelp> flag to L<Util::CommandLine>.

    use Util::CommandLine 'podhelp';

However, note that calling this method executes the functionally at runtime, not
during import, which is normally what happens with L<Util::CommandLine>.

=head1 SEE ALSO

You can look for additional information at:

=for :list
* L<GitHub|https://github.com/gryphonshafer/exact-cli>
* L<CPAN|http://search.cpan.org/dist/exact-cli>
* L<MetaCPAN|https://metacpan.org/pod/exact::cli>
* L<AnnoCPAN|http://annocpan.org/dist/exact-cli>
* L<Travis CI|https://travis-ci.org/gryphonshafer/exact-cli>
* L<Coveralls|https://coveralls.io/r/gryphonshafer/exact-cli>
* L<CPANTS|http://cpants.cpanauthors.org/dist/exact-cli>
* L<CPAN Testers|http://www.cpantesters.org/distro/D/exact-cli.html>

=cut
