function cdpk {
	cd $PKG/$1
}

function cdaim {
	cdpk "AppImages/$1"
}

function cdeam {
	cdpk "Emacs.AppImage/$1"
}

function cdgam {
	cdpk "GVim.AppImage/$1"
}

function cdfr {
	cdpk "fedora-rpmbuild/$1"
}
