#!/bin/bash
for i in $HOME/Shell/*.sh
do
    . "$i"
done

export PS1='\[\][\t, \d] \w \u # '
