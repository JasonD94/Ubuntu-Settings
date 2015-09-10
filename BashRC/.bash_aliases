# LS
alias c='clear'
alias cu='cd ..'
alias l='ls -CFlh'
alias ll='ls -alh'

# Use a long listing format
alias la='ls -A'

# Colorize the ls output
alias ls='ls --color=auto'

# Show hidden files
alias l.='ls -d .* --color=auto'

# CD stuff
# get rid of command not found
alias cd..='cd ..'

# a quick way to get out of current directory
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# Git related
alias a="git add --all :/"
alias b="git branch"
alias co="git checkout"
alias cm="git commit -m"
alias d="git diff"
alias p="git push origin"
alias pu="git pull origin"
alias s="git status"

# Misc found on the internet
alias diskspace="du -S | sort -n -r |more"
alias folders="find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn"
alias woo="fortune"

# For taring stuff
alias t="tar czvf"

# update on one command
alias reboot="sudo reboot"
alias apt-get="sudo apt-get"
alias update='sudo apt-get update && sudo apt-get upgrade'