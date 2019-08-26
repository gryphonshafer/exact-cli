# NAME

exact::cli - Command-line interface helper utilities extension for exact

# VERSION

version 1.02

[![Build Status](https://travis-ci.org/gryphonshafer/exact-cli.svg)](https://travis-ci.org/gryphonshafer/exact-cli)
[![Coverage Status](https://coveralls.io/repos/gryphonshafer/exact-cli/badge.png)](https://coveralls.io/r/gryphonshafer/exact-cli)

# SYNOPSIS

    use exact -cli;

# DESCRIPTION

[exact::cli](https://metacpan.org/pod/exact::cli) is command-line interface helper utilities extension for [exact](https://metacpan.org/pod/exact).
It effectively is an integration of [Util::CommandLine](https://metacpan.org/pod/Util::CommandLine) with [exact](https://metacpan.org/pod/exact).
Consult the [Util::CommandLine](https://metacpan.org/pod/Util::CommandLine) documentation for additional information.
See the [exact](https://metacpan.org/pod/exact) documentation for additional informatioh about
extensions. The intended use of [exact::cli](https://metacpan.org/pod/exact::cli) is via the extension interface
of [exact](https://metacpan.org/pod/exact).

    use exact -cli, -conf, -noutf8;

However, you can also use it directly, which will also use [exact](https://metacpan.org/pod/exact) with
default options:

    use exact::cli;

# IMPORTED FUNCTIONS

The following functions are imported:

## options

This is the same function from [Util::CommandLine](https://metacpan.org/pod/Util::CommandLine).

## pod2usage

This is the same function from [Util::CommandLine](https://metacpan.org/pod/Util::CommandLine).

## readmode

This is the same function from [Util::CommandLine](https://metacpan.org/pod/Util::CommandLine).

## singleton

This function is the equivalent of the `singleton` flag to [Util::CommandLine](https://metacpan.org/pod/Util::CommandLine).

    use Util::CommandLine 'singleton';

However, note that calling this method executes the functionally at runtime, not
during import, which is normally what happens with [Util::CommandLine](https://metacpan.org/pod/Util::CommandLine).

## podhelp

This function is the equivalent of the `podhelp` flag to [Util::CommandLine](https://metacpan.org/pod/Util::CommandLine).

    use Util::CommandLine 'podhelp';

However, note that calling this method executes the functionally at runtime, not
during import, which is normally what happens with [Util::CommandLine](https://metacpan.org/pod/Util::CommandLine).

# SEE ALSO

You can look for additional information at:

- [GitHub](https://github.com/gryphonshafer/exact-cli)
- [CPAN](http://search.cpan.org/dist/exact-cli)
- [MetaCPAN](https://metacpan.org/pod/exact::cli)
- [AnnoCPAN](http://annocpan.org/dist/exact-cli)
- [Travis CI](https://travis-ci.org/gryphonshafer/exact-cli)
- [Coveralls](https://coveralls.io/r/gryphonshafer/exact-cli)
- [CPANTS](http://cpants.cpanauthors.org/dist/exact-cli)
- [CPAN Testers](http://www.cpantesters.org/distro/D/exact-cli.html)

# AUTHOR

Gryphon Shafer <gryphon@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2019 by Gryphon Shafer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
