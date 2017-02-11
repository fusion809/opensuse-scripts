if ! [[ -L $HOME/Music ]]; then
	rm -rf $HOME/Music
	sudo ln -sf /data/Music $HOME/Music
fi

if ! [[ -L $HOME/Pictures ]]; then
	rm -rf $HOME/Pictures
	sudo ln -sf /data/Pictures $HOME/Pictures
fi

if ! [[ -L $HOME/Videos ]]; then
	rm -rf $HOME/Videos
	sudo ln -sf /data/Videos $HOME/Videos
fi

if ! [[ -L $HOME/"VirtualBox VMs" ]]; then
	rm -rf $HOME/"VirtualBox VMs"
	sudo ln -sf /data/"VirtualBox VMs" $HOME/"VirtualBox VMs"
fi
