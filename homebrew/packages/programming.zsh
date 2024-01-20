# Homebrew packages for programming, keep the list in alphabetical order

# Run your GitHub Actions locally
brew install act

# Bourne-Again SHell, a UNIX command interpreter
brew install bash

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

# AST-based pattern checker for JavaScript
brew install eslint

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

# Handy way to save and run project-specific commands
brew install just

# Open-source distributed event streaming platform
brew install kafka

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

# Powerful, clean, object-oriented scripting language
brew install ruby

# Static analysis and lint tool, for (ba)sh scripts
brew install shellcheck

# In-memory database that persists on disk
brew install sqlite

# Cross-shell prompt for astronauts
brew install starship

# Tool to build, change, and version infrastructure
brew install terraform

# Thin wrapper for Terraform e.g. for locking state
brew install terragrunt

# Language for application scale JavaScript development
brew install typescript

# Modern build tool for JavaScript and CSS
brew install vite

# Command language interpreter
brew install zsh
