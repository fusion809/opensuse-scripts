#!/bin/zsh
if [[ -f /usr/bin/atom ]]; then
	ATOM_INSTALLED_VERSION=$(rpm -qi atom | grep "Version" |  cut -d ':' -f 2 | cut -d ' ' -f 2)
fi
ATOM_LATEST_VERSION=$(wget -q "https://api.github.com/repos/atom/atom/releases/latest"  -O - | grep -E "https.*atom-amd64.tar.gz" | cut -d '"' -f 4 | cut -d '/' -f 8 | sed 's/v//g')

autoload is-at-least

function atom-install {
  # printf "${ATOM_LATEST_VERSION}" >> $HOME/.local/share/atom-${ATOM_LATEST_VERSION} is in case the Atom package is broken like Atom 1.12.8
	wget -c https://github.com/atom/atom/releases/download/v${ATOM_LATEST_VERSION}/atom.x86_64.rpm -O $HOME/Programs/atom-${ATOM_LATEST_VERSION}.x86_64.rpm
	zpi $HOME/Programs/atom-${ATOM_LATEST_VERSION}.x86_64.rpm
}

if [[ -n $ATOM_INSTALLED_VERSION ]] && ! `is-at-least $ATOM_LATEST_VERSION ${ATOM_INSTALLED_VERSION:-0}`; then
	if ! [[ -f $HOME/.local/share/atom-${ATOM_LATEST_VERSION} ]]; then
  		atom-install
  	fi
fi

if ! [[ -f /usr/bin/atom ]]; then
	atom-install
	ln -sf /data/.atom $HOME/.atom
	apmi package-sync
fi
