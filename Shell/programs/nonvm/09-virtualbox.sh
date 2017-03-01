if ! [[ -f /usr/bin/VirtualBox ]]; then
	zpi virtualbox
	sudo gpasswd -a fusion809 vboxusers
fi
