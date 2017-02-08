if ! [[ -d $PKG/runescape-launcher ]]; then
	gitc runescape-launcher $PKG/runescape-launcher
fi

if ! [[ -d /usr/local/bin ]]; then
	sudo mkdir -p /usr/local/bin
fi

if ! [[ -d /usr/local/share/applications ]]; then
	sudo mkdir -p /usr/local/share/applications
fi

sudo cp $PKG/runescape-launcher/runescape-launcher /usr/local/bin
sudo cp $PKG/runescape-launcher/runescape-launcher.desktop /usr/local/share/applications
docker pull fusion809/runescape-launcher:latest
