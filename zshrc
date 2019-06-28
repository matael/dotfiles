DOTFILES="${ZDOTDIR:-$HOME}/useful/dotfiles"
export TERM="rxvt-unicode"
export EDITOR="nvim"

# Source Prezto.
[[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# Load aliases & options
[[ -s "$DOTFILES/zsh/aliases.zsh" ]] && source "$DOTFILES/zsh/aliases.zsh"
[[ -s "$DOTFILES/zsh/options.zsh" ]] && source "$DOTFILES/zsh/options.zsh"
[[ -s "$DOTFILES/zsh/npm.zsh" ]] && source "$DOTFILES/zsh/npm.zsh"

export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export PLANES_SRC='/home/matael/workspace/phd/utils/PLANES/src'
export MC_SKIN='/home/matael/.mc/lib/solarized.ini'
export PHDDIR='/home/matael/workspace/phd'

# create scratch dirs on the fly
function new-scratch {
	cur_dir="/tmp/scratch"
	new_dir="/tmp/scratch-`date +'%s'`"
	mkdir -p $new_dir
	ln -nfs $new_dir $cur_dir
	cd $cur_dir
	echo "New scratch dir ready for grinding ;>"
	zle accept-line
}
zle -N new-scratch
bindkey '\es' new-scratch

export PATH=${ZDOTDIR:-$HOME}/bin/:$PATH:/home/matael/.gem/ruby/2.5.0/bin
unalias rm

[[ -s "/etc/profile.d/autojump.zsh" ]] && source "/etc/profile.d/autojump.zsh"
