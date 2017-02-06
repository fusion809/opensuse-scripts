## Update local opensuse-scripts repo

export OS=$SCR/opensuse-scripts

function cps {
	sudo rm -rf $OS/Shell $OS/root/Shell
	mkdir -p $OS/Shell
	chmod +x $HOME/Shell/{*,*/*,*/*/*/*,*/*/*/*/*,*/*/*/*/*/*}.sh
	cp -a $HOME/Shell/* $OS/Shell
	cp -a $HOME/.{bash,zsh}rc $OS/
	sudo cp -a /root/{Shell,.{bash,zsh}rc} $OS/root/
	sudo chmod +x $OS/root/Shell/*.sh
}

## Update opensuse-scripts GitHub repo
function shup {
	cps && cdos && push "$1" && szsh && cd -
}
