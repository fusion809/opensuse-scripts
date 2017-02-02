function vbs {
	vim $HOME/.bashrc
}

function vcfe {
	pushd $HOME/Documents/CodeLite/CPP-Math-Projects/Simple-Pendulum
	vim
	popd
}

function vobs {
	pushd "$HOME/OBS/$1"
	vim
	popd
}

function vobsh {
	pushd "home:fusion809/$1"
	vim
	popd
}

function vrc {
	vim $HOME/.vimrc
}

function vsh {
	pushd $HOME/Shell/$1
	vim
	popd
}

function vzs {
	vim $HOME/.zshrc
}
