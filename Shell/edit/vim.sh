# Edit vimrc in Atom
function avim {
  atom $HOME/.vimrc
}

# Edit vimrc in nano
function nvim {
  nano $HOME/.vimrc
}

alias nvimrc=nvim

# Edit vimrc in Vim
function vimrc {
	vim $HOME/.vimrc
}

alias vvim=vimrc

# Edit vimrc in gvim
function gvimrc {
	gvim $HOME/.vimrc
}
