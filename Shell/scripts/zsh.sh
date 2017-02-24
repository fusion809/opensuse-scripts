function szsh {
  source $HOME/.zshrc
}

function zsht {
	PS4=':[%*]:%x:%I+' zsh -x -l -i
}
