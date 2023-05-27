#!/usr/bin/env zsh

export DOTFILES_DIRPATH="$HOME/dotfiles"
export HOMEBREW_DIRPATH="$DOTFILES_DIRPATH/homebrew"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Upgrade all installed casks
brew upgrade --cask

# Bourne-Again SHell, a UNIX command interpreter
brew install bash

# Bash scripts that integrate bat with various command-line tools
brew install bat-extras

# New way to see and navigate directory trees
brew install broot

# Versatile and fast Unicode/ASCII/ANSI graphics renderer
brew install chafa

# Cross-platform make
brew install cmake

# Utility that creates projects from templates
brew install cookiecutter

# Get, unpack, build, and install modules from CPAN
brew install cpanminus

# More intuitive version of du in rust
brew install dust

# Select default apps for documents and URL schemes on macOS
brew install duti

# Modern replacement for 'ls'
brew install exa

# Simple, fast and user-friendly alternative to find
brew install fd

# Play, record, convert, and stream audio and video
brew install ffmpeg

# Command-line fuzzy finder written in Go
brew install fzf

# Distributed revision control system
brew install git

# Tools and libraries to manipulate images in many formats
brew install imagemagick

# Lightweight and flexible command-line JSON processor
brew install jq

# McFly
brew install mcfly

# Swiss-army knife of markup format conversion
brew install pandoc

# Shell command parallelization utility
brew install parallel

# Modern Python package and dependency manager supporting the latest PEP standards
brew install pdm

# Highly capable, feature-rich programming language
brew install perl

# General-purpose scripting language
brew install php

# 📦🚀 Fast, disk space efficient package manager
brew install pnpm

# A Zsh Theme
brew install powerlevel10k

# Framework for managing multi-language pre-commit hooks
brew install pre-commit

# Seamless operability between C++11 and Python
brew install pybind11

# Python version management
brew install pyenv

# Powerful, clean, object-oriented scripting language
brew install ruby

# Static analysis and lint tool, for (ba)sh scripts
brew install shellcheck

# Command-line interface for https://speedtest.net bandwidth tests
brew install speedtest-cli

# Cross-shell prompt for astronauts
brew install starship

# Organize software neatly under a single directory tree (e.g. /usr/local)
brew install stow

# Programmatically correct mistyped console commands
brew install thefuck

# CLI tool that moves files or folder to the trash
brew install trash

# Display directories as trees (with optional color/HTML output)
brew install tree

# Extraction utility for .zip compressed archives
brew install unzip

# A youtube-dl fork with additional features and fixes
brew install yt-dlp

# Install OH MY ZSH
source "$HOMEBREW_DIRPATH/install-oh-my-zsh.zsh"

# TODO: This script is not executed after installing Oh my ZSH!
# Install OH MY ZSH Plugins
source "$HOMEBREW_DIRPATH/install-oh-my-zsh-plugins.zsh"

# Remove outdated versions of installed formulae
brew cleanup
