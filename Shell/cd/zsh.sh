function cdzsh {
	cd $HOME/.oh-my-zsh/$1
}

function cdzp {
	cdzsh "plugins/$1"
}

function cdzt {
	cdzsh "themes/$1"
}
