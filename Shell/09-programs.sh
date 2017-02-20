for i in $HOME/Shell/programs/*.sh
do
  . "$i"
done

# Test if running in VM - test is from http://unix.stackexchange.com/questions/3685/find-out-if-the-os-is-running-in-a-virtual-environment
if ! `cat /proc/cpuinfo | grep hypervisor >/dev/null 2>&1`; then
	for i in $HOME/Shell/programs/nonvm/*.sh
	do
    if [[ $SHELL == "/bin/zsh" ]]; then
	    . "$i"
    elif [[ $i != "$HOME/Shell/programs/nonvm/01-atom.sh" ]] && [[ $i != "$HOME/Shell/programs/nonvm/02-vscode.sh" ]] && [[ $i != "$HOME/Shell/programs/nonvm/06-messengerfordesktop.sh" ]]; then
      . "$i"
    fi
	done
fi
