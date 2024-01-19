#!/usr/bin/env zsh

set -euxo pipefail

# Install Oh My Zsh Plugins - Plugins are listed in dotfiles/zsh/zshrc/plugins.zsh

# The following plugins do not require installation:
# - macos: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/macos
# - zsh-z: https://github.com/agkozak/zsh-z#for-oh-my-zsh-users

# pdm: https://pdm.fming.dev/latest/#shell-completion
mkdir ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/pdm
pdm completion zsh >${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/pdm/_pdm

# zsh-autopair: https://github.com/hlissner/zsh-autopair#install
# can be installed with homebrew (undocumented!): https://formulae.brew.sh/formula/zsh-autopair
brew install zsh-autopair

# zsh-autosuggestions: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
