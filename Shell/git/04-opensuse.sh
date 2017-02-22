## Update local opensuse-scripts repo

export OSC=$SCR/opensuse-scripts

function cps {
	sudo rm -rf $OSC/Shell $OSC/root/Shell
	mkdir -p $OSC/Shell
	chmod +x -R $HOME/Shell
	cp -a $HOME/Shell/* $OSC/Shell
	if ! [[ -f /data/.bashrc ]]; then
		cp -a $HOME/.{bash,zsh}rc $OSC/
	fi
	sudo cp -a /root/{Shell,.{bash,zsh}rc} $OSC/root/
        sudo cp /etc/fstab $OSC/etc
	sudo chmod +x $OSC/root/Shell/*.sh
	sudo cp -a /mnt/usr/local/bin/* $OSC/mnt/usr/local/bin
}

## Update opensuse-scripts GitHub repo
function shup {
	cps && cdos && push "$1" && szsh && cd -
}
