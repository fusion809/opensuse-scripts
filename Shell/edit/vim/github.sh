# GitHub mine directory
function vgm {
	pushd $GHUBM/$1
	vim
	popd
}

# GitHub others directory
function vgo {
	pushd $GHUBO/$1
	vim
	popd
}

# fusion809.github.io repo
# https://github.com/fusion809/fusion809.github.io
function vfgi {
	pushd $FGI
	vim
	popd
}

alias vblog=vfgi

# Scripts
# GNU_Octave repo
# https://github.com/fusion809/GNU_Octave
function voct {
	pushd $SCR/GNU_Octave
	vim
	popd
}

# JScripts repo
# https://github.com/fusion809/JScripts
function vjs {
	pushd $JS
	vim
	popd
}

# python-scripts repo
# https://github.com/fusion809/python-scripts
function vpy {
        pushd $PY
	vim
	popd
}

# zsh-theme repo
# https://github.com/fusion809/zsh-theme
function vzt {
	pushd $SCR/zsh-theme
	vim
	popd
}
