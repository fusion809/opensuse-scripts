# Blog
function edblog {
	atom $HOME/GitHub/fusion809.github.io
}

# Menus
function edmen {
	sudo atom /etc/xdg/menus && sudo atom /usr/share/desktop-directories
}

# PKGBUILDs
function edpk {
	atom $HOME/GitHub/PKGBUILDs
}

# Python scripts
function edpy {
	atom $HOME/GitHub/python-scripts
}

# Shell scripts
function edsh {
	atom $HOME/Shell
}

function nx {
	nano $HOME/.xinitrc
}

function vx {
	vim $HOME/.xinitrc
}

function edobs {
	if [[ $HOME == /home/fusion809 ]]; then
		atom $HOME/OBS/home:fusion809
	else
		atom $HOME/rpmbuild
	fi
}
