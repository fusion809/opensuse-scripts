function cdem {
	cd ~/.emacs.d
}

function spup {
	cdem
	git pull origin master
	cd -
}
