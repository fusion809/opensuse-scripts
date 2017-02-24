#!/bin/bash
# This script assumes the following partition scheme:
# /dev/sda1 - EFI partition for openSUSE Tumbleweed (OT)
# /dev/sda2 - ext4 root partition for OT
# /dev/sdb1 - EFI partition for OT
# /dev/sdb2 - ext4 root partition for Ubuntu (presumably 14.04, but other versions should work!)
# /dev/sdb3 - swap partition set up for Ubuntu, but usable by OT
# /dev/sdb4 - ext4 data partition with my backed up files

if ! [[ -d /data ]]; then
	mkdir -p /data
fi

# Set up mounts
sudo mount /dev/sdb4 /data
sudo mount /dev/sdb2 /mnt

# Set up symlinks
ln -sf /data/GitHub $HOME/GitHub
ln -sf /data/Shell $HOME/Shell
ln -sf /data/.bashrc $HOME/.bashrc
ln -sf /data/.zshrc $HOME/.zshrc
ln -sf /data/.zsh 

function zpi {
	sudo zypper in -y -l "$@"
}

if ! [[ -f /bin/zsh ]]; then
	zpi zsh git openssh
fi

export OS=$HOME/GitHub/mine/scripts/opensuse-scripts

sudo mkdir -p /usr/local/bin
sudo cp $OS/usr/local/bin/* /usr/local/bin
sudo cp $OS/mnt/usr/local/bin/* /mnt/usr/local/bin
sudo cp /etc/fstab /etc/fstab.backup
sudo cp $OS/etc/fstab /etc/fstab

# Set user shell to Zsh
chsh -s /bin/zsh
# Set root shell to Zsh
sudo chsh -s /bin/zsh

# Test if running in VM - test is from http://unix.stackexchange.com/questions/3685/find-out-if-the-os-is-running-in-a-virtual-environment
if ! `cat /proc/cpuinfo | grep hypervisor >/dev/null 2>&1`; then
	for i in $HOME/Shell/programs/nonvm/*.sh
	do
		if [[ $SHELL == "/bin/zsh" ]]; then
			. "$i"
		elif [[ $i != "$HOME/Shell/programs/nonvm/01-atom.sh" ]] && [[ $i != "$HOME/Shell/programs/nonvm/02-vscode.sh" ]] && [[ $i != "$HOME/Shell/programs/nonvm/06-messengerfordesktop.sh" ]]; then
			. "$i"
		else
			/bin/zsh -c "$i"
    		fi
	done
fi

# Enter zsh
/bin/zsh
