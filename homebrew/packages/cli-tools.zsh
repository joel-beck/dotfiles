# Homebrew CLI Tools, keep the list in alphabetical order

# Clone of cat(1) with syntax highlighting and Git integration, better `cat`
brew install bat

# Bash scripts that integrate bat with various command-line tools
brew install bat-extras

# New way to see and navigate directory trees, better `tree`
brew install broot

# Versatile and fast Unicode/ASCII/ANSI graphics renderer
brew install chafa

# Good-lookin' diffs with diff-highlight and more, better `diff`
brew install diff-so-fancy

# Disk Usage/Free Utility, better `df`
brew install duf

# More intuitive version of 'du' in rust, better `du`
brew install dust

# Select default apps for documents and URL schemes on macOS
brew install duti

# Modern, maintained replacement for ls, better `ls`
brew install eza

# Simple, fast and user-friendly alternative to 'find', better `find`
brew install fd

# Play, record, convert, and stream audio and video
brew install ffmpeg

# Banner-like program prints strings as ASCII art
brew install figlet

# Command-line fuzzy finder written in Go
brew install fzf

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

# Command-line benchmarking tool
brew install hyperfine

# Tools and libraries to manipulate images in many formats
brew install imagemagick

# Duplicate file finder and an enhanced fork of 'fdupes', better `fdupes`
brew install jdupes

# Lightweight and flexible command-line JSON processor
brew install jq

# Mac App Store command-line interface
brew install mas

# Fly through your shell history
brew install mcfly

# Powerful paging program, better `less`
brew install most

# Modern replacement for ps written by Rust, better `ps`
brew install procs

# Code searching tool similar to ack, but faster, better `grep`
brew install ripgrep

# Intuitive find & replace CLI, better `sed`
brew install sd

# Command-line interface for speedtest.net bandwidth tests
brew install speedtest-cli

# Seamlessly correct mistyped console commands
brew install thefuck &&
    eval $(thefuck --alias fuck)

# Simplified and community-driven man pages
brew install tldr

# Program that allows you to count code, quickly
brew install tokei

# CLI tool that moves files or folder to the trash
brew install trash

# Display directories as trees (with optional color/HTML output)
brew install tree

# Extraction utility for .zip compressed archives
brew install unzip

# Executes a program periodically, showing output fullscreen
brew install watch

# A youtube-dl fork with additional features and fixes
brew install yt-dlp
