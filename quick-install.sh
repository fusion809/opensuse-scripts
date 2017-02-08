#!/bin/bash
export GHUB=$HOME/GitHub
export GHUBM=$GHUB/mine
export SCR=$GHUBM/scripts
export OS=$SCR/opensuse-scripts
export ZS=$HOME/.oh-my-zsh
export PLG=$ZS/plugins
export THM=$ZS/themes
export ZT=$SCR/zsh-theme

# Create GitHub directory
if ! [[ -d $SCR ]]; then
	mkdir -p $SCR
fi

alias zpi=`sudo zypper in -y`

# Get openssh, if not pre-installed and Zsh
if ! `which ssh >/dev/null 2>&1`; then
	zpi openssh
fi

if ! [[ -f /bin/zsh ]]; then
	zpi zsh
fi

if ! [[ -f /usr/bin/git ]]; then
	zpi git
fi

# Clone opensuse-scripts repo
if ! [[ -d $OS ]]; then
	git clone https://github.com/fusion809/opensuse-scripts $OS
  	# Copy across
  	cp -a $OS/{Shell,.bashrc,.zshrc} $HOME/
  	sudo cp -a $OS/root/{Shell,.bashrc,.zshrc} /root/
else
  	cd $OS
  	git pull origin master
  	cd -
  	# Copy across
  	cp -a $OS/{Shell,.bashrc,.zshrc} $HOME/
  	sudo cp -a $OS/root/{Shell,.bashrc,.zshrc} /root/
fi

if ! [[ -d $HOME/.oh-my-zsh ]]; then
  # git clone oh-my-zsh
  git clone https://github.com/robbyrussell/oh-my-zsh $HOME/.oh-my-zsh
else
  cd $HOME/.oh-my-zsh
  git pull origin master
  cd -
fi

if ! [[ -d $ZT ]]; then
# Get my self-made zsh-themes
  git clone https://github.com/fusion809/zsh-theme $ZT
  cp -a $ZT/*.zsh-theme $ZTM
else
  cd $ZT
  git pull origin master
  cd -
  cp -a $ZT/*.zsh-theme $ZTM
fi

if ! [[ -d $PLG/zsh-syntax-highlighting ]]; then
	# Get zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-syntax-highlighting $PLG/zsh-syntax-highlighting
fi

if ! [[ -d $PLG/zsh-history-substring-search ]]; then
	git clone https://github.com/zsh-users/zsh-history-substring-search $PLG/zsh-history-substring-search
fi

if ! [[ -d $PKG/runescape-launcher ]]; then
	git clone https://github.com/fusion809/runescape-launcher $PKG/runescape-launcher
	sudo mkdir -p /usr/local/{bin,share/applications}
	sudo cp $PKG/runescape-launcher/runescape-launcher /usr/local/bin
	sudo cp $PKG/runescape-launcher/runescape-launcher.desktop /usr/local/share/applications
	sudo cp $OS/usr/local/bin/* /usr/local/bin
fi

# Change default login shell to Zsh
chsh -s /bin/zsh
sudo chsh -s /bin/zsh
/bin/zsh
