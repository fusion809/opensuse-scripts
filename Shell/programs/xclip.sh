if ! [[ -f /usr/bin/xclip ]]; then
	sudo zypper in -y xclip
fi

function clipf {
	xclip -sel clip < $1
}

function sclipf {
	sudo xclip -sel clip < $1
}
