set dotenv-load

default:
  just --list

install:
  ./install

brewfile:
  brew bundle dump --file="homebrew/Brewfile" --force

brewfile-install:
  brew bundle --file="homebrew/Brewfile"

default-apps:
  duti macos/duti.config
