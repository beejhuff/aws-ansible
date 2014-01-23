#!/usr/bin/zsh

setopt EXTENDED_GLOB
for rcfile in /home/$1/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "/home/$1/.${rcfile:t}"
  chown -R $1:$1 "/home/$1/.${rcfile:t}"
done
