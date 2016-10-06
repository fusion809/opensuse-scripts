#!/bin/bash

test -s $HOME/.alias && . $HOME/.alias || true

for i in $HOME/Shell/*.sh
do
    . "$i"
done
