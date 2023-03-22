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
