#!/bin/bash
if ! [[ -d /data ]]; then
	mkdir -p /data
fi

sudo mount /dev/sdb4 /data

ln -sf /data/GitHub $HOME/GitHub
ln -sf /data/Shell $HOME/Shell
ln -sf /data/.bashrc $HOME/.bashrc
ln -sf /data/.zshrc $HOME/.zshrc
ln -sf /data/.zsh 

function zpi {
	sudo zypper in -y -l "$@"
}

if ! [[ -f /bin/zsh ]]; then
	zpi zsh
fi

if ! [[ -f /usr/bin/git ]]; then
	zpi git
fi

if ! `which ssh >/dev/null 2>&1`; then
        zpi openssh
fi

export PKG=$HOME/GitHub/mine/packaging
export OS=$HOME/GitHub/mine/scripts/opensuse-scripts

sudo mkdir -p /usr/local/{bin,share/applications}
sudo cp $PKG/runescape-launcher/runescape-launcher /usr/local/bin
sudo cp $PKG/runescape-launcher/runescape-launcher.desktop /usr/local/share/applications
sudo cp $OS/usr/local/bin/* /usr/local/bin

chsh -s /bin/zsh
sudo chsh -s /bin/zsh
/bin/zsh
