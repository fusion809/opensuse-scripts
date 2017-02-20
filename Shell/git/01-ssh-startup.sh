#############################################################
# The following script was taken from
# http://stackoverflow.com/a/18915067/1876983
#############################################################
# Sign in with SSH at startup
# Makes contributing to GitHub projects a lot simpler.
if [[ -f $HOME/.gitconfig.sh ]]; then
	source $HOME/.gitconfig.sh
fi

if [[ -a $HOME/.ssh/environment ]]; then
	SSH_ENV=$HOME/.ssh/environment
elif [[ $USER == fusion809 ]] && ! [[ -f $HOME/.ssh/id_rsa.pub ]]; then
	ssh-keygen -t rsa -b 4096 -C "brentonhorne77@gmail.com"
	SSH_ENV=$HOME/.ssh/environment
	git config --global user.name "fusion809"
	git config --global user.email "brentonhorne77@gmail.com"
elif [[ -n $EMAIL ]] && ! [[ -f $HOME/.ssh/id_rsa.pub ]]; then
	ssh-keygen -t rsa -b 4096 -C "$EMAIL"
	SSH_ENV=$HOME/.ssh/environment
	git config --global user.name "$USER"
	git config --global user.email "$EMAIL"
fi

if ! `which keychain > /dev/null 2>&1`; then
  zpi keychain
fi

# Start agent
eval `keychain -q --eval id_rsa`

# AUR
if [[ $USER == "fusion809" ]] || [[ $AUR == "true" ]]; then
	if ! [[ -f $HOME/.ssh/config ]]; then
		echo "Host aur.archlinux.org\n  IdentityFile ~/.ssh/aur\n  User aur" > $HOME/.ssh/config
	fi

	if ! [[ -f $HOME/.ssh/aur.pub ]]; then
		ssh-keygen -f $HOME/.ssh/aur
	fi

	# start the ssh-agent
	# Remember, for this to work you need your SSH keys setup
	# https://help.github.com/articles/generating-ssh-keys/

	eval `keychain -q --eval aur`
else
	printf "Add an AUR=true line to your $HOME/.gitconfig.sh file in order to set up SSH to authenticate AUR commits.\n"
fi

#############################################################
