#!/usr/bin/env zsh

# Install Perlbrew to manage Perl versions
\curl -L https://install.perlbrew.pl | bash

# Initialize Perlbrew
source ~/perl5/perlbrew/etc/bashrc
perlbrew init

# Get the list of available Perl versions
PERL_VERSIONS=$(perlbrew available | grep -o "perl-[0-9]\+\.[0-9]\{1,\}\(\.[0-9]\{1,\}\)\?" | grep -v "perl-[0-9]\+\.\([13579]\+\.\)\?\|perl-5\.10\.\|perl-5\.8\.\|perl-5\.6\.\|perl-5\.4\.\|perl-5\.005")

# Select the latest Perl version
LATEST_PERL_VERSION=$(echo "$PERL_VERSIONS" | sort -V | tail -n 1)

# Install the latest Perl version
perlbrew install $LATEST_PERL_VERSION

# Switch to the latest Perl version
perlbrew switch $LATEST_PERL_VERSION

# Install cpanminus for the latest Perl version
cpan App::cpanminus

# Install Perl modules with cpanminus
cpanm Mac::SystemDirectory

# For `latexindent` (format LaTeX files with LaTeXWorkshop VSCode extension)
cpanm cpanm YAML::Tiny
cpanm File::HomeDir
