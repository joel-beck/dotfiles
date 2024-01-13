# Install Homebrew Packages, keep the list in alphabetical order

# Run your GitHub Actions locally
brew install act

# Clone of cat(1) with syntax highlighting and Git integration
brew install bat

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

# Debugger for the Go programming language
brew install delve

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

# AST-based pattern checker for JavaScript
brew install eslint

# Modern, maintained replacement for ls
brew install eza

# Simple, fast and user-friendly alternative to 'find'
brew install fd

# Play, record, convert, and stream audio and video
brew install ffmpeg

# Command-line fuzzy finder written in Go
brew install fzf

# Go programming language
brew install go &&
    # Update, add and remove Go imports
    go install golang.org/x/tools/cmd/goimports@latest &&
    # Go language server
    go install golang.org/x/tools/gopls@latest

# Fast linters runner for Go
brew install golangci-lint

# GitHub CLI
brew install gh &&
    # Install GitHub Copilot CLI
    gh extension install github/gh-copilot

# Distributed revision control system
brew install git

# Spell checker and morphological analyzer
# usage with multiple dictionaries: `hunspell -d en_US,de_DE "text with spelling errors"`
brew install hunspell &&
    mkdir -p ~/Library/Spelling &&
    # Download English (US) dictionary
    curl -o ~/Library/Spelling/en_US.aff https://raw.githubusercontent.com/wooorm/dictionaries/main/dictionaries/de/index.dic &&
    curl -o ~/Library/Spelling/en_US.dic https://raw.githubusercontent.com/wooorm/dictionaries/main/dictionaries/en/index.dic &&
    # Download German dictionary
    curl -o ~/Library/Spelling/de_DE.aff https://raw.githubusercontent.com/wooorm/dictionaries/main/dictionaries/de/index.aff &&
    curl -o ~/Library/Spelling/de_DE.dic https://raw.githubusercontent.com/wooorm/dictionaries/main/dictionaries/de/index.dic

# Tools and libraries to manipulate images in many formats
brew install imagemagick

# Lightweight and flexible command-line JSON processor
brew install jq

# Handy way to save and run project-specific commands
brew install just

# Open-source distributed event streaming platform
brew install kafka

# Fly through your shell history
brew install mcfly

# Platform built on V8 to build network applications
brew install node

# Swiss-army knife of markup format conversion
brew install pandoc

# Shell command parallelization utility
brew install parallel

# Highly capable, feature-rich programming language
brew install perl

# Execute binaries from Python packages in isolated environments
brew install pipx &&
    pipx install hatch &&
    pipx install mypy &&
    pipx install pdm &&
    pipx install poetry &&
    pipx install pre-commit &&
    pipx install ruff

# General-purpose scripting language
brew install php

# Code formatter for JavaScript, CSS, JSON, GraphQL, Markdown, YAML
brew install prettier

# Seamless operability between C++11 and Python
brew install pybind11

# Python version management & Install latest Python version
brew install pyenv &&
    LATEST_PYTHON_VERSION="$(pyenv install --list | grep -v - | grep -v b | tail -1)" &&
    pyenv install "$LATEST_PYTHON_VERSION" &&
    pyenv global "$LATEST_PYTHON_VERSION"

# Code searching tool similar to ack, but faster
brew install ripgrep

# Powerful, clean, object-oriented scripting language
brew install ruby

# Static analysis and lint tool, for (ba)sh scripts
brew install shellcheck

# Command-line interface for speedtest.net bandwidth tests
brew install speedtest-cli

# In-memory database that persists on disk
brew install sqlite

# Cross-shell prompt for astronauts
brew install starship

# Organize software neatly under a single directory tree (e.g. /usr/local)
brew install stow

# Tool to build, change, and version infrastructure
brew install terraform

# Thin wrapper for Terraform e.g. for locking state
brew install terragrunt

# Seamlessly correct mistyped console commands
brew install thefuck

# Simplified and community-driven man pages
brew install tldr

# CLI tool that moves files or folder to the trash
brew install trash

# Display directories as trees (with optional color/HTML output)
brew install tree

# Language for application scale JavaScript development
brew install typescript

# Extraction utility for .zip compressed archives
brew install unzip

# Modern build tool for JavaScript and CSS
brew install vite

# A youtube-dl fork with additional features and fixes
brew install yt-dlp

# Command language interpreter
brew install zsh
