function cdem {
	cd $HOME/.emacs.d
}

function spup {
	cdem
	git pull origin master
	cd -
}
