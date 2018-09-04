function cdsh {
	cd "$HOME/Shell/$1"
}

function cdap {
	cd "/usr/share/applications/$1"
}

function cdi {
	cd "/usr/share/icons/$1"
}

function cdd {
	cd "/usr/share/desktop-directories/$1"
}

function cdm {
	cd "/etc/xdg/menus/$1"
}

function cdvi {
	cd "/data/VirtualBox VMs/ISOs/$1"
}

function cdvil {
	cdvi "Linux/$1"
}
