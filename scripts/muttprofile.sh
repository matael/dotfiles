#!/bin/bash
#
# Select a mail profile for mutt. Simplified shellscript version
#
# 20110518 MV: Initial version

BASEDIR=~/.mutt

MUTTBASE=profile
MUTTPROFILE=$BASEDIR/profile.active
CHOICE=/tmp/mp.$$

declare menulist

for option in $( find $BASEDIR/$MUTTBASE.* -type f | sed "s/.*\.//" )
do
	menulist[${#menulist[@]}]="$option"
	desc="$( grep "DESC:" $BASEDIR/$MUTTBASE.$option )"
	menulist[${#menulist[@]}]="${desc/*DESC: /}"
done
default=$( find $BASEDIR/$MUTTBASE.* -type l -printf "%l" | sed "s/.*\.//" )

IFS=$'\n'
whiptail --default-item $default --nocancel --menu "Profile selection" 20 60 10 $( printf "${menulist[*]}") 2> $CHOICE
ret=$( cat $CHOICE )
rm -f $CHOICE
if test -f $BASEDIR/$MUTTBASE.$ret
then
	ln -sf $BASEDIR/$MUTTBASE.$ret $MUTTPROFILE
fi 
