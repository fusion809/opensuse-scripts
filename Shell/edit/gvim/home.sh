function gvbs {
	gvim $HOME/.bashrc
}

function gvcfe {
	pushd $HOME/Documents/CodeLite/CPP-Math-Projects/Simple-Pendulum
	gvim
	popd
}

function gvobs {
	pushd "$HOME/OBS/$1"
	gvim
	popd
}

function gvobsh {
	pushd "home:fusion809/$1"
	gvim
	popd
}

function gvrc {
	gvim $HOME/.vimrc
}

function gvsh {
	pushd $HOME/Shell/$1
	gvim
	popd
}

function gvzs {
	gvim $HOME/.zshrc
}
