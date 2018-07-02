#!/bin/bash

test -s $HOME/.alias && . $HOME/.alias || true

for i in $HOME/Shell/*.sh
do
    . "$i"
done

# added by travis gem
[ -f /home/fusion809/.travis/travis.sh ] && source /home/fusion809/.travis/travis.sh
