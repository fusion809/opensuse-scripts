# GitHub mine directory
function gvgm {
	pushd $GHUBM/$1
	gvim
	popd
}

# GitHub others directory
function gvgo {
	pushd $GHUBO/$1
	gvim
	popd
}

# fusion809.github.io repo
# https://github.com/fusion809/fusion809.github.io
function gvfgi {
	pushd $FGI
	gvim
	popd
}

alias gvblog=gvfgi

# Scripts
# GNU_Octave repo
# https://github.com/fusion809/GNU_Octave
function gvoct {
	pushd $SCR/GNU_Octave
	gvim
	popd
}

# JScripts repo
# https://github.com/fusion809/JScripts
function gvjs {
	pushd $JS
	gvim
	popd
}

# python-scripts repo
# https://github.com/fusion809/python-scripts
function gvpy {
        pushd $PY
	gvim
	popd
}

# zsh-theme repo
# https://github.com/fusion809/zsh-theme
function gvzt {
	pushd $SCR/zsh-theme
	gvim
	popd
}
