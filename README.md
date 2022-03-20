# NAME

exact::cli - Command-line interface helper utilities extension for exact

# VERSION

version 1.06

[![test](https://github.com/gryphonshafer/exact-cli/workflows/test/badge.svg)](https://github.com/gryphonshafer/exact-cli/actions?query=workflow%3Atest)
[![codecov](https://codecov.io/gh/gryphonshafer/exact-cli/graph/badge.svg)](https://codecov.io/gh/gryphonshafer/exact-cli)

# SYNOPSIS

    use exact -cli;

# DESCRIPTION

[exact::cli](https://metacpan.org/pod/exact%3A%3Acli) is command-line interface helper utilities extension for [exact](https://metacpan.org/pod/exact).
It effectively is an integration of [Util::CommandLine](https://metacpan.org/pod/Util%3A%3ACommandLine) with [exact](https://metacpan.org/pod/exact).
Consult the [Util::CommandLine](https://metacpan.org/pod/Util%3A%3ACommandLine) documentation for additional information.
See the [exact](https://metacpan.org/pod/exact) documentation for additional information about
extensions. The intended use of [exact::cli](https://metacpan.org/pod/exact%3A%3Acli) is via the extension interface
of [exact](https://metacpan.org/pod/exact).

    use exact -cli, -conf, -noutf8;

However, you can also use it directly, which will also use [exact](https://metacpan.org/pod/exact) with
default options:

    use exact::cli;

# IMPORTED FUNCTIONS

The following functions are imported:

## options

This is the same function from [Util::CommandLine](https://metacpan.org/pod/Util%3A%3ACommandLine).

## pod2usage

This is the same function from [Util::CommandLine](https://metacpan.org/pod/Util%3A%3ACommandLine).

## readmode

This is the same function from [Util::CommandLine](https://metacpan.org/pod/Util%3A%3ACommandLine).

## singleton

This function is the equivalent of the `singleton` flag to [Util::CommandLine](https://metacpan.org/pod/Util%3A%3ACommandLine).

    use Util::CommandLine 'singleton';

However, note that calling this method executes the functionally at runtime, not
during import, which is normally what happens with [Util::CommandLine](https://metacpan.org/pod/Util%3A%3ACommandLine).

## podhelp

This function is the equivalent of the `podhelp` flag to [Util::CommandLine](https://metacpan.org/pod/Util%3A%3ACommandLine).

    use Util::CommandLine 'podhelp';

However, note that calling this method executes the functionally at runtime, not
during import, which is normally what happens with [Util::CommandLine](https://metacpan.org/pod/Util%3A%3ACommandLine).

# SEE ALSO

You can look for additional information at:

- [GitHub](https://github.com/gryphonshafer/exact-cli)
- [MetaCPAN](https://metacpan.org/pod/exact::cli)
- [GitHub Actions](https://github.com/gryphonshafer/exact-cli/actions)
- [Codecov](https://codecov.io/gh/gryphonshafer/exact-cli)
- [CPANTS](http://cpants.cpanauthors.org/dist/exact-cli)
- [CPAN Testers](http://www.cpantesters.org/distro/D/exact-cli.html)

# AUTHOR

Gryphon Shafer <gryphon@cpan.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2019-2050 by Gryphon Shafer.

This is free software, licensed under:

    The Artistic License 2.0 (GPL Compatible)
