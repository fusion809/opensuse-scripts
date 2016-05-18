function update {
	zypper up
}

function zypin {
	zypper install $@
}

function sbash {
	source $HOME/.bashrc
}

function nbash {
	nano $HOME/.bashrc
}

function ndm {
	nano /etc/sysconfig/displaymanager
}

