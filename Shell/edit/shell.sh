# Shells
function edsh {
	atom $HOME/Shell
}

# $HOME/.bashrc
function abash {
	atom $HOME/.bashrc $HOME/Shell
}

function nbash {
  nano $HOME/.bashrc
}

function vbash {
  vim $HOME/.bashrc
}

# $HOME/.zshrc
function azsh {
  atom $HOME/.zshrc $HOME/Shell
}

function nzsh {
  nano $HOME/.zshrc
}

function vzsh {
  vim $HOME/.zshrc
}
