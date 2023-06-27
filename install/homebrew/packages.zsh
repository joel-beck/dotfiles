# Install Homebrew Packages, keep the list in alphabetical order

# Bash scripts that integrate bat with various command-line tools
brew install bat-extras

# Bourne-Again SHell, a UNIX command interpreter
brew install bash

# New way to see and navigate directory trees
brew install broot

# Versatile and fast Unicode/ASCII/ANSI graphics renderer
brew install chafa

# Cross-platform make
brew install cmake

# Transfer data with URL syntax support via command line
brew install curl

# Utility that creates projects from templates
brew install cookiecutter

# Get, unpack, build, and install modules from CPAN
brew install cpanminus

# Pack, ship and run any application as a lightweight container
brew install docker

# Compose and run multi-container Docker applications & Install as a Docker Plugin
brew install docker-compose &&
    mkdir -p ~/.docker/cli-plugins &&                                                                # Create directory for docker plugins
    ln -sfn /opt/homebrew/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose # Symlink docker-compose to the plugins directory

# More intuitive version of 'du' in rust
brew install dust

# Select default apps for documents and URL schemes on macOS
brew install duti

# Modern replacement for 'ls'
brew install exa

# Simple, fast and user-friendly alternative to 'find'
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

# Fly through your shell history
brew install mcfly

# Platform built on V8 to build network applications
brew install node

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

# Execute binaries from Python packages in isolated environments
brew install pipx

# Fast, disk space efficient package manager
brew install pnpm

# Zsh Theme
brew install powerlevel10k

# Framework for managing multi-language pre-commit hooks
brew install pre-commit

# Code searching tool similar to ack, but faster
brew install ripgrep

# Powerful, clean, object-oriented scripting language
brew install ruby

# Static analysis and lint tool, for (ba)sh scripts
brew install shellcheck

# Command-line interface for speedtest.net bandwidth tests
brew install speedtest-cli

# Cross-shell prompt for astronauts
brew install starship

# Organize software neatly under a single directory tree (e.g. /usr/local)
brew install stow

# Seamlessly correct mistyped console commands
brew install thefuck

# CLI tool that moves files or folder to the trash
brew install trash

# Display directories as trees (with optional color/HTML output)
brew install tree

# Line-oriented search tool
brew install the_silver_searcher

# Simplified and community-driven man pages
brew install tldr

# Language for application scale JavaScript development
brew install typescript

# Modern build tool for JavaScript and CSS
brew install vite

# Extraction utility for .zip compressed archives
brew install unzip

# A youtube-dl fork with additional features and fixes
brew install yt-dlp

# Command language interpreter
brew install zsh

# Python version management & Install latest Python version
brew install pyenv && pyenv install $(pyenv install --list | grep -v - | grep -v b | tail -1)

# Seamless operability between C++11 and Python
brew install pybind11

# In-memory database that persists on disk
brew install sqlite
