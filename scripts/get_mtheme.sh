#! /bin/bash
#
# get_mtheme.sh
#
# Copyright © 2017 Mathieu Gaborit (matael) <mathieu@matael.org>
#
# Licensed under the "THE BEER-WARE LICENSE" (Revision 42):
# Mathieu (matael) Gaborit wrote this file. As long as you retain this notice you
# can do whatever you want with this stuff. If we meet some day, and you think
# this stuff is worth it, you can buy me a beer or coffee in return
#
# 

URL=https://github.com/matze/mtheme
COMMIT=$1

invoke_dir=$PWD
temp_dir="mtheme_tmp_$PPID"

echo "==> Cloning metropolis repo from $URL"
git clone "$URL" "$temp_dir"
cd "$temp_dir"

if [ ! -z "$COMMIT" ]; then
	echo "==> Checking out commit $commit"
	git checkout "$COMMIT"
fi

echo "==> Compiling style files"
make sty

echo "==> Copying styles to directory $invoke_dir"
cp *.sty "$invoke_dir"

echo "==> Removing temp dir"
cd "$invoke_dir"
rm -rf "$temp_dir"
