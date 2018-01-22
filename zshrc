# /ETC/ZSh/zshrc ou ~/.zshrc
# Fichier de configuration principal de zsh, lu au lancement des shells interactifs
# (et non des shells d'interprétation de fichier)
# Formation Debian GNU/Linux par Alexis de Lattre
# http://formation-debian.via.ecp.fr/

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
OH_MY_ZSH=$HOME/useful/oh-my-zsh

# Load all of the config files in oh-my-zsh that end in .zsh
for config_file ($OH_MY_ZSH/lib/*.zsh) source $config_file
source ~/useful/dotfiles/scripts/virtualenv.plugin.zsh
plugins=(ssh-agent taskwarrior)
zstyle :omz:plugins:ssh-agent identities id_rsa id_rsa_gh id_rsa_golgoth

################
# 1. Les alias #
################



#######################################
# 2. Prompt et définition des touches #
#######################################

# Exemple : ma touche HOME, cf  man termcap, est codifiee K1 (upper left
# key  on keyboard)  dans le  /etc/termcap.  En me  referant a  l'entree
# correspondant a mon terminal (par exemple 'linux') dans ce fichier, je
# lis :  K1=\E[1~, c'est la sequence  de caracteres qui sera  envoyee au
# shell. La commande bindkey dit simplement au shell : a chaque fois que
# tu rencontres telle sequence de caractere, tu dois faire telle action.
# La liste des actions est disponible dans "man zshzle".

# Correspondance touches-fonction
bindkey ''    beginning-of-line       # Home
bindkey ''    end-of-line             # End
bindkey ''    delete-char             # Del
bindkey '^[[1~' beginning-of-line       # Home
bindkey '^[[4~' end-of-line             # End
bindkey '[3~' delete-char             # Del
bindkey '[2~' overwrite-mode          # Insert
bindkey '[5~' history-search-backward # PgUp
bindkey '[6~' history-search-forward  # PgDn


# Prise en charge des touches [début], [fin] et autres
typeset -A key

key[Home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}

[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Insert]}"  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
[[ -n "${key[Delete]}"  ]]  && bindkey  "${key[Delete]}"  delete-char
[[ -n "${key[Up]}"      ]]  && bindkey  "${key[Up]}"      up-line-or-history
[[ -n "${key[Down]}"    ]]  && bindkey  "${key[Down]}"    down-line-or-history
[[ -n "${key[Left]}"    ]]  && bindkey  "${key[Left]}"    backward-char
[[ -n "${key[Right]}"   ]]  && bindkey  "${key[Right]}"   forward-char


# Gestion de la couleur pour 'ls' (exportation de LS_COLORS)
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


###########################################
# 3. Options de zsh (cf 'man zshoptions') #
###########################################

# Je ne veux JAMAIS de beeps
unsetopt beep
unsetopt hist_beep
unsetopt list_beep
# >| doit être utilisés pour pouvoir écraser un fichier déjà existant ;
# le fichier ne sera pas écrasé avec '>'
unsetopt clobber
# Ctrl+D est équivalent à 'logout'
unsetopt ignore_eof
# Affiche le code de sortie si différent de '0'
setopt print_exit_value
# Demande confirmation pour 'rm *'
unsetopt rm_star_silent
# Correction orthographique des commandes
#setopt correct
# Si on utilise des jokers dans une liste d'arguments, retire les jokers
# qui ne correspondent à rien au lieu de donner une erreur
setopt nullglob

# Schémas de complétion

# - Schéma A :
# 1ère tabulation : complète jusqu'au bout de la partie commune
# 2ème tabulation : propose une liste de choix
# 3ème tabulation : complète avec le 1er item de la liste
# 4ème tabulation : complète avec le 2ème item de la liste, etc...
# -> c'est le schéma de complétion par défaut de zsh.

# Schéma B :
# 1ère tabulation : propose une liste de choix et complète avec le 1er item
#                   de la liste
# 2ème tabulation : complète avec le 2ème item de la liste, etc...
# Si vous voulez ce schéma, décommentez la ligne suivante :
setopt menu_complete

# Schéma C :
# 1ère tabulation : complète jusqu'au bout de la partie commune et
#                   propose une liste de choix
# 2ème tabulation : complète avec le 1er item de la liste
# 3ème tabulation : complète avec le 2ème item de la liste, etc...
# Ce schéma est le meilleur à mon goût !
# Si vous voulez ce schéma, décommentez la ligne suivante :
# unsetopt list_ambiguous

# Options de complétion
# Quand le dernier caractère d'une complétion est '/' et que l'on
# tape 'espace' après, le '/' est effacé
setopt auto_remove_slash
# Ne fait pas de complétion sur les fichiers et répertoires cachés
unsetopt glob_dots

# Traite les liens symboliques comme il faut
setopt chase_links

# Quand l'utilisateur commence sa commande par '!' pour faire de la
# complétion historique, il n'exécute pas la commande immédiatement
# mais il écrit la commande dans le prompt
#setopt hist_verify
# Si la commande est invalide mais correspond au nom d'un sous-répertoire
# exécuter 'cd sous-répertoire'
setopt auto_cd
# L'exécution de "cd" met le répertoire d'où l'on vient sur la pile
setopt auto_pushd
# Ignore les doublons dans la pile
setopt pushd_ignore_dups
# N'affiche pas la pile après un "pushd" ou "popd"
setopt pushd_silent
# "pushd" sans argument = "pushd $HOME"
setopt pushd_to_home

# Les jobs qui tournent en tâche de fond sont nicé à '0'
unsetopt bg_nice
# N'envoie pas de "HUP" aux jobs qui tourent quand le shell se ferme
unsetopt hup


###############################################
# 4. Paramètres de l'historique des commandes #
###############################################

# Nombre d'entrées dans l'historique
export HISTORY=1000
export SAVEHIST=1000

# Fichier où est stocké l'historique
export HISTFILE=$HOME/.history

# Ajoute l'historique à la fin de l'ancien fichier
#setopt append_history

# Chaque ligne est ajoutée dans l'historique à mesure qu'elle est tapée
setopt inc_append_history

# Ne stocke pas  une ligne dans l'historique si elle  est identique à la
# précédente
setopt hist_ignore_dups

# Supprime les  répétitions dans le fichier  d'historique, ne conservant
# que la dernière occurrence ajoutée
#setopt hist_ignore_all_dups

# Supprime les  répétitions dans l'historique lorsqu'il  est plein, mais
# pas avant
setopt hist_expire_dups_first

# N'enregistre  pas plus d'une fois  une même ligne, quelles  que soient
# les options fixées pour la session courante
#setopt hist_save_no_dups

# La recherche dans  l'historique avec l'éditeur de commandes  de zsh ne
# montre  pas  une même  ligne  plus  d'une fois,  même  si  elle a  été
# enregistrée
setopt hist_find_no_dups


###########################################
# 5. Complétion des options des commandes #
###########################################

zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}'
zstyle ':completion:*' max-errors 3 numeric
zstyle ':completion:*' use-compctl false
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"

autoload -U compinit
compinit


export TERM="rxvt-unicode"
export EDITOR=vim
#export NNTPSERVER=news.orange.fr
export NNTPSERVER=nntp.aioe.org

# create scratch dirs on the fly
function new-scratch {
	cur_dir="/tmp/scratch"
	new_dir="/tmp/scratch-`date +'%s'`"
	mkdir -p $new_dir
	ln -nfs $new_dir $cur_dir
	cd $cur_dir
	echo "New scratch dir ready for grinding ;>"
}

source /etc/profile
[[ -s /etc/profile.d/autojump.sh ]] && . /etc/profile.d/autojump.sh


export PATH=${PATH}:/opt/android-sdk-linux/tools:/opt/android-sdk-linux/platform-tools

export PATH=${PATH}:/home/matael/bin:/home/matael/.gem/ruby/1.9.1/bin
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages:/usr/local/lib/python3/dist-packages/cura/

function virtualenv_prompt_info_custom() {
    if [ "$VIRTUAL_ENV" ]; then
		echo "$(virtualenv_prompt_info)|"
	fi
}

# get the name of the branch we are on
function git_prompt_info_custom() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  # echo "(%{$fg[green]%}${ref#refs/heads/}%{$fg_bold[blue]%}@$(git_prompt_short_sha)$(parse_git_dirty))"
  echo "%{$fg[white]%}(%{$fg[green]%}${ref#refs/heads/}%{$fg_bold[red]%}$(parse_git_dirty)%{$fg_no_bold[white]%})%{$reset_color%}"
}

# Prompt couleur (la couleur n'est pas la même pour le root et
# pour les simples utilisateurs)
if [ "`id -u`" -eq 0 ]; then
	export PROMPT='%{$fg[blue]%}$(virtualenv_prompt_info_custom)%{$fg[red]%}%n | %~ > $(git_prompt_info_custom)%(!.#.::)%{$reset_color%} '
else
	# export PROMPT='%{$fg[blue]%}$(virtualenv_prompt_info_custom)%{$fg[white]%}%n | %{$fg_bold[green]%}%~%{$fg_no_bold[white]%} > %{$fg[blue]%}%m $(git_prompt_info_custom)%(!.#.::)%{$reset_color%} '
	export PROMPT='%{$fg[blue]%}$(virtualenv_prompt_info_custom)%{$fg[white]%}%n | %{$fg_bold[green]%}%2~%{$fg_no_bold[white]%} > %{$fg[green]%}%m $(git_prompt_info_custom)%(!.#.::)%{$reset_color%} '
fi

# Venvs
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$PATH:/home/matael/.gem/ruby/2.4.0/bin

export JAVA_HOME='/usr/lib/jvm/default-runtime'
alias vim=nvim

export PLANES_SRC='/home/matael/workspace/phd/utils/PLANES/src'
export MC_SKIN='/home/matael/.mc/lib/solarized.ini'
export PHDDIR='/home/matael/workspace/phd'
