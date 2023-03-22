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
source "./zshrc/ohmyzsh.zsh"

# SUBSECTION: Oh My ZSH Plugins & Command Line Tools
source "./zshrc/plugins.zsh"

# NOTE: iTerm2 Configuration breaks Warp's custom prompt
# NOTE: Powerlevel 10k is NOT supported for Warp, only for iTerm2!
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
    # SECTION: iTerm2
    source "./zshrc/iterm.zsh"

    # SECTION: Powerlevel 10k
    source "./zshrc/powerlevel10k.zsh"

fi

# SECTION: Aliases
source "./zshrc/aliases.zsh"

# SECTION: Conda
source "./zshrc/conda.zsh"

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
source "./zshrc/starship.zsh"
