#!/bin/bash


#####################
# this script  installs my dotfiles!!!!
#####################



############ variables

dir=~/dotfiles                                     # dotfiles dir
olddir=~/dotfiles_old                              # old dotfiles backup directory
files=".bashrc .vimrc .zshrc .config/clerk/config .config/i3/config .config/yabar/yabar.conf .spacemacs"                         #list of files/folders to symlink in homedir


############

#create dotfiles_old to backup current dotfiles in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir  -p $olddir
echo "...done!"


#move any existing dotfiles to dotfiles_old directory

for file in $files; do
    echo "Moving current $file to $olddir"
    mv ~/$file  $olddir
done

for file in $files; do
    echo "Creating symlink of $file to the one in home directory"
    ln -s $dir/$file ~/$file
done



