# ls readability and aliases
alias ls='ls --classify --tabsize=0 --literal --color=auto --show-control-chars --human-readable'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'

# never overwrite without asking and confirm deletion of 3+ files
alias cp='cp -i'
alias mv='mv -i'

# improved readability & default options
alias less='less --quiet'
alias df='df --human-readable'
alias du='du --human-readable'
alias tmux='tmux -2'
alias grep='grep --color=auto'
alias jptr='jupyter notebook --ip=127.0.0.1'
alias vjptr='$VIRTUAL_ENV/bin/jupyter notebook --ip=127.0.0.1'
alias vjptrlab='$VIRTUAL_ENV/bin/jupyter lab --ip=127.0.0.1'
alias ipp='ipython -i -c "from numpy import *; import matplotlib.pyplot as plt"'

# short versions
alias g='git'
alias :q='exit'
alias oct='octave-cli'
alias vi='nvim'
alias vim='nvim'
alias rokcell='wine ~/.wine/drive_c/Program\ Files/Matelys/RokCell/RokCell.exe'

# alias-like helper functions
function ssa() { ssh-add ~/.ssh/id_rsa_$1 }

if [ -x /usr/bin/dircolors ]
then
  if [ -r ~/.dir_colors ]
  then
    eval "`dircolors ~/.dir_colors`"
  elif [ -r /etc/dir_colors ]
  then
    eval "`dircolors /etc/dir_colors`"
  else
    eval "`dircolors`"
  fi
fi

