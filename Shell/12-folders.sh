if ! [[ -L $HOME/Music ]]; then
	rm -rf $HOME/Music
	sudo ln -sf /data/Music $HOME/Music
fi

if ! [[ -L $HOME/Pictures ]]; then
	rm -rf $HOME/Pictures
	sudo ln -sf /data/Pictures $HOME/Pictures
fi

if ! [[ -L $HOME/Textbooks ]]; then
	sudo ln -sf /data/Textbooks $HOME/Textbooks
fi

if ! [[ -L $HOME/Videos ]]; then
	rm -rf $HOME/Videos
	sudo ln -sf /data/Videos $HOME/Videos
fi

if ! [[ -L $HOME/"VirtualBox VMs" ]]; then
	rm -rf $HOME/"VirtualBox VMs"
	sudo ln -sf /data/"VirtualBox VMs" $HOME/"VirtualBox VMs"
fi

if ! [[ -d $HOME/.themes/macOS-Arc-White ]]; then
	mkdir -p $HOME/.themes
	git clone https://github.com/fusion809/macOS-Arc-White $HOME/.themes/macOS-Arc-White
fi

if ! [[ -d $HOME/.local/share/icons/MacBuntu-Remix ]]; then
	mkdir -p $HOME/.local/share/icons
	git clone https://github.com/fusion809/MacBuntu-Remix $HOME/.local/share/icons/MacBuntu-Remix
	git clone https://github.com/fusion809/MacBuntu-OS $HOME/.local/share/icons/MacBuntu-OS
fi

if ! [[ -L $HOME/Programs/rpm ]]; then
	mkdir -p $HOME/Programs
	sudo ln -sf /data/RPMS $HOME/Programs/rpm
fi
