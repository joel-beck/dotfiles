plugins=(git k macos pdm poetry thefuck zsh-autosuggestions zsh-syntax-highlighting zsh-z)

# BOOKMARK: zsh-autosuggestions
# Type 'cat' in Terminal and press Shortcut to see correct symbols for 'bindkey' command
# Accept Next Word: Option + Rightarrow or Cmd + Rightarrow
# Accept whole Line: Rightarrow
bindkey '^E' forward-word

# BOOKMARK: thefuck
# corrects typos
eval $(thefuck --alias fuck)

# BOOKMARK: zsh-completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# BOOKMARK: zsh-autopair
# auto-closing quotes and parentheses
source ~/.zsh-autopair/autopair.zsh
autopair-init

# BOOKMARK: fzf - Fuzzy Finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# BOOKMARK: broot - Prettier Trees
source /Users/joel/.config/broot/launcher/bash/br

# BOOKMARK: Source Oh my ZSH
source $ZSH/oh-my-zsh.sh

# BOOKMARK: McFly
# NOTE: Has to be placed AFTER sourcing oh-my-zsh.sh
# NOTE: Does not work in RStudio => temporarily disabled
# eval "$(mcfly init zsh)"

# BOOKMARK: Exa Color Scheme
export EXA_COLORS="\
da=38;5;245:\
di=38;5;14:\
sn=38;5;28:\
sb=38;5;28:\
uu=38;5;40:\
un=38;5;160:\
gu=38;5;40:\
gn=38:5:160:\
bl=38;5;220:\
ur=37:\
uw=37:\
ux=37:\
ue=37:\
gr=37:\
gw=37:\
gx=37:\
tr=37:\
tw=37:\
tx=37:\
su=37:\
sf=37:\
xa=37"
