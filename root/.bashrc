function update {
	zypper up
}

function zypin {
	zypper install $@
}

function sbash {
	source ~/.bashrc
}

function nbash {
	nano ~/.bashrc
}

function ndm {
	nano /etc/sysconfig/displaymanager
}

