function cded {
	cd $EDT/$1
}

function cdem {
	cded "emacs/$1"
}

function cdvm {
	cded "vim/$1"
}

alias cdvim=cdvm
