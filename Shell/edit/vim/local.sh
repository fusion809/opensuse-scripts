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

function vgt {
	vim gtkrc
}

function vix {
	vim index.theme
}

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

function vsp {
	vim *.spec
}
