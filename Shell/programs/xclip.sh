function clipf {
	xclip -sel clip < $1
}

function sclipf {
	sudo xclip -sel clip < $1
}
