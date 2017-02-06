function archroot {
  sudo chroot /mnt /usr/bin/su-fusion809
}

function yaup {
	sudo chroot /mnt /usr/local/bin/yaup-ot
}

function runescape-launcher {
	xhost +
	sudo chroot /mnt /usr/local/bin/runescape-ot
}
