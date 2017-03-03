function vc {
	vim *.c
}

function vcp {
	vim *.cpp
}

function vdk {
	vim Dockerfile
}

function vgc {
	vim gtk.css
}

function vgi {
	vim .gitignore
}

alias vgit=vgi

function vgt {
	vim gtkrc
}

function vix {
	vim index.theme
}

alias vth=vix

function vmk {
	vim Makefile
}

function vpk {
	if [[ -f PKGBUILD ]]; then
		vim PKGBUILD
	else
		vim package.json
	fi
}

function vrm {
	vim README.md
}

function vsc {
	vim *.dsc
}

function vsp {
	vim *.spec
}
