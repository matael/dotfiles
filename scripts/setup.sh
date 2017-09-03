#! /bin/bash
#
# setup.sh
#
# Copyright © 2017 Mathieu Gaborit (matael) <mathieu@matael.org>
#
# Licensed under the "THE BEER-WARE LICENSE" (Revision 42):
# Mathieu (matael) Gaborit wrote this file. As long as you retain this notice you
# can do whatever you want with this stuff. If we meet some day, and you think
# this stuff is worth it, you can buy me a beer or coffee in return
#
# 


export HOME=$PWD
dotfiles="$HOME/useful/dotfiles"
bin="$HOME/bin"

echo "Creating $HOME/bin and $HOME/useful if not present..."
mkdir "$HOME/bin" || echo "bin/ already present"
mkdir "$HOME/useful" || echo "useful/ already present"


echo "Cloning dotfiles..."
cd "$HOME/useful"
git clone git@github.com:matael/dotfiles || {
	echo "dotfiles already present, updating"
	cd "$dotfiles"
	git pull
}

echo "Cloning nord theme..."
cd "$HOME/useful"
git clone git@github.com:git@github.com:Matael/nord-xresources || {
	echo "nord already present, updating"
	cd "$HOME/useful/nord-xresources"
	git pull
}

echo "Installing switch_nord script.."
cd "$HOME"
ln -s "$dotfiles/scripts/switch_nord" "$bin/" || echo "link already exists"

echo "Adding base and nord to local Xdefaults"
echo '#include "/home/matael/useful/dotfiles/Xdefaults_base"' >> "$HOME/.Xdefaults"
echo '#include "/home/matael/useful/nord-xresources/src/nord"' >> "$HOME/.Xdefaults"

echo "Installing vim config..."
ln -s "$dotfiles/vimrc" "$HOME/.vimrc" || echo "link already exists"

echo "Installing vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git "$HOME/.vim/bundle/Vundle.vim" || echo "Vundle already present"
echo "Run"
echo "    vim +BundleClean +BundleInstall +BundleUpdate"
echo "to update modules"

for fn in "gitconfig" "tmux.conf" "tmux.status"; do
	echo "Installing $fn..."
	ln -s "$dotfiles/$fn" "$HOME/.$fn" || echo "link already exists"
done
