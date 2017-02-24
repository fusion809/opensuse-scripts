for i in $HOME/Shell/programs/*.sh
do
  . "$i"
done

function prognvm {
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
}
