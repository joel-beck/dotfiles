set dotenv-load

default:
  just --list

install:
  ./install

brewfile:
  brew bundle dump --file="homebrew/Brewfile" --force
