# Install Oh My Zsh: https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Oh My Zsh Plugins - Plugins are listed in dotfiles/zsh/zshrc/plugins.zsh

# The following plugins do not require installation:
# - macos: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/macos
# - zsh-z: https://github.com/agkozak/zsh-z#for-oh-my-zsh-users

# fzf-zsh-plugin: https://github.com/unixorn/fzf-zsh-plugin#oh-my-zsh
git clone https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin

# pdm: https://pdm.fming.dev/latest/#shell-completion
mkdir $ZSH_CUSTOM/plugins/pdm
pdm completion zsh >$ZSH_CUSTOM/plugins/pdm/_pdm

# thefuck: https://github.com/nvbn/thefuck#installation
brew install thefuck

# zsh-autosuggestions: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting