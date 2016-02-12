# Blog
function edblog {
	atom ~/GitHub/fusion809.github.io
}

# Menus
function edmen {
	sudo atom /etc/xdg/menus && sudo atom /usr/share/desktop-directories
}

# PKGBUILDs
function edpk {
	atom ~/GitHub/PKGBUILDs
}

# Python scripts
function edpy {
	atom ~/GitHub/python-scripts
}

# Shell scripts
function edsh {
	atom ~/Shell
}

function nx {
	nano ~/.xinitrc
}

function vx {
	vim ~/.xinitrc
}

function edobs {
	if [[ $HOME == /home/fusion809 ]]; then
		atom ~/OBS/home:fusion809/home:fusion809
	else
		atom ~/rpmbuild
	fi
}
