# SECTION: Path / Environment Variables
# SUBSECTION: PATH
# Add Tex Live to PATH
export PATH=/usr/local/texlive/2021/bin/universal-darwin:$PATH
export PATH=/usr/local/texlive/2021/texmf-dist/scripts/$PATH

# Add Poetry to PATH
export PATH="/Users/joel/.local/bin:$PATH"

# Set Path to oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# SUBSECTION: CPATH
# https://dimag.ibs.re.kr/home/sangil/2020/how-to-configure-perl-to-run-latexindent-on-mac-os-catalina/
export CPATH=/Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/System/Library/Perl/5.30/darwin-thread-multi-2level/CORE:$CPATH

# SUBSECTION: NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"                                       # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# SUBSECTION: Use VSCode as Terminal Editor
export EDITOR="code -w"

# SECTION: Oh My ZSH
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# SUBSECTION: Oh My ZSH Plugins & Command Line Tools
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

# NOTE: iTerm2 Configuration breaks Warp's custom prompt
# NOTE: Powerlevel 10k is NOT supported for Warp, only for iTerm2!
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
    # SECTION: iTerm2
    # changes hex 0x15 to delete everything to the left of the cursor,
    # rather than the whole line
    bindkey "^U" backward-kill-line

    # binds hex 0x18 0x7f with deleting everything to the left of the cursor
    bindkey "^X\\x7f" backward-kill-line

    # adds redo
    bindkey "^X^_" redo

    test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

    # SECTION: Powerlevel 10k
    # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
    # Initialization code that may require console input (password prompts, [y/n]
    # confirmations, etc.) must go above this block; everything else may go below.

    # typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

    # if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    #   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
    # fi

    source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

    # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
    [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
fi

# SECTION: Aliases
# NOTE: overwrite commands with modern version only if syntax remained the same (e.g.
# grep / rg), otherwise print message to use the newer command (e.g. find / fd)

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# list one line per entry, show hidden files, show sizes in human readable format and
# show directories in different color
# use snippet `! ls` for exa equivalent!
alias ls="ls -lah --color=auto"

# copy, move/rename and create directories in verbose mode
alias cp="cp -v"
alias mv="mv -v"
alias mkdir="mkdir -pv"

# ask for permission when removing files or directories
# alias rm="rm -vi"
# move to trash instead of hard delete
alias rm="echo rm is disabled. Use trash instead as a safer alternative."

# include hidden files in fd
alias fd="fd -H"

# use ripgrep instead of grep
alias grep="rg"

# use dust instead of du
alias du="echo du is disabled. Use dust instead as a prettier alternative."
# list sizes in human readable format
alias dust="dust -H"

# prettier printing with bat* commands
alias cat="batpipe"
alias man="batman"
alias diff="batdiff"

# use broot for prettier tree printing + navigation
# alias tree="br -s"

# SECTION: Conda
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/mambaforge/base/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/mambaforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/mambaforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/mambaforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# activate default environment to not accidentally install packages in base environment
conda activate py11-ds

# SECTION: Perl
# commented out due to shell startup error "Can't locate local/lib.pm in @INC"
# recommended in https://stackoverflow.com/a/33090150/18345721
# eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"

# SECTION: Bun
# bun completions
[ -s "/Users/joel/.bun/_bun" ] && source "/Users/joel/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# SECTION: pnpm
# pnpm
export PNPM_HOME="/Users/joel/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm endexport

# SECTION: pyenv
PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# SECTION: Starship
eval "$(starship init zsh)"

# custom window title: https://starship.rs/advanced-config/#change-window-title
function set_win_title() {
    echo -ne "\033]0; $(basename "$PWD") \007"
}
precmd_functions+=(set_win_title)
