function gvc {
	gvim *.c
}

function gvcp {
	gvim *.cpp
}

function gvdk {
	gvim Dockerfile
}

function gvgc {
	gvim gtk.css
}

function gvgi {
	gvim .gitignore
}

alias gvgit=gvgi

function gvgt {
	gvim gtkrc
}

function gvix {
	gvim index.theme
}

alias gvth=gvix

function gvmk {
	gvim Makefile
}

function gvpk {
	if [[ -f PKGBUILD ]]; then
		gvim PKGBUILD
	else
		gvim package.json
	fi
}

function gvrm {
	gvim README.md
}

function gvsp {
	gvim *.spec
}
