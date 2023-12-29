#!/bin/bash

#uninstall current tmux
echo "UNINSTALLING CURRENT TMUX INSTANCE"
apt-get remove tmux
rm -rf $HOME/.tmux.conf


echo "INSTALLING TMUX"
#install tmux
apt-get install tmux

#cloning TPM
echo "INSTALLING TPM"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#copying tmux.conf
echo "COPYING TMUX.CONF"
cp tmux.conf $HOME/.tmux.conf

echo "RELOAD TMUX ENVIROMENT"
# type this in terminal if tmux is already running
tmux source ~/.tmux.conf