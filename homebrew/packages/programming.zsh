# Homebrew packages for programming, keep the list in alphabetical order

# Run your GitHub Actions locally
brew install act

# Bourne-Again SHell, a UNIX command interpreter
brew install bash

# Bash Automated Testing System
brew install bats-core

# Bats helper libraries
brew tap kaos/shell
brew install bats-assert # load with `load "/opt/homebrew/lib/bats-assert/load.bash"` in test file
brew install bats-file
brew install bats-support

# Toolchain of the web
brew install biome

# Bun
curl -fsSL https://bun.sh/install | bash

# Cross-platform make
brew install cmake

# Diff your Docker containers
brew install container-diff

# Transfer data with URL syntax support via command line
brew install curl

# Debugger for the Go programming language
brew install delve

# Load/unload environment variables based on $PWD
brew install direnv

# Pack, ship and run any application as a lightweight container
brew install docker

# Compose and run multi-container Docker applications & Install as a Docker Plugin
brew install docker-compose &&
    mkdir -p ~/.docker/cli-plugins &&                                                                # Create directory for docker plugins
    ln -sfn /opt/homebrew/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose # Symlink docker-compose to the plugins directory

# Embeddable SQL OLAP Database Management System
brew install duckdb

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

# Gorgeous metric visualizations and dashboards for timeseries databases
brew install grafana

# Command-line tools for fly.io services
brew install flyctl

# Handy way to save and run project-specific commands
brew install just

# Open-source distributed event streaming platform
brew install kafka

# Kubernetes command-line interface
brew install kubernetes-cli

# Run a Kubernetes cluster locally
brew install minikube

# Platform built on V8 to build network applications
brew install node

# Swiss-army knife of markup format conversion
brew install pandoc

# Shell command parallelization utility
brew install parallel

# Highly capable, feature-rich programming language
brew install perl

# Package management made easy
brew install pixi

# Execute binaries from Python packages in isolated environments
brew install pipx &&
    pipx install argcomplete && # Activate shell completions for pipx
    pipx install uv &&
    pipx install ruff &&
    pipx install mypy &&
    pipx install pre-commit

# General-purpose scripting language
brew install php

# Theme for zsh
brew install powerlevel10k

# Code formatter for JavaScript, CSS, JSON, GraphQL, Markdown, YAML
brew install prettier

# Service monitoring system and time series database
brew install prometheus

# Seamless operability between C++11 and Python
brew install pybind11

# Powerful, clean, object-oriented scripting language
brew install ruby

# Static analysis and lint tool, for (ba)sh scripts
brew install shellcheck

# Autoformat shell script source code
brew install shfmt

# SQL linter and auto-formatter for Humans
brew install sqlfluff

# SQL formatter with width-aware output
brew install sqlfmt

# In-memory database that persists on disk
brew install sqlite

# CLI utility for manipulating SQLite databases
brew install sqlite-utils

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

# Shell extension to navigate your filesystem faster
brew install zoxide

# Command language interpreter
brew install zsh
