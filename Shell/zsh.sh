function szsh {
  source ~/.zshrc
}

function nzsh {
  nano ~/.zshrc
}

function azsh {
  atom ~/.bashrc ~/Shell
}

function cpzsh {
	cp -a ~/.oh-my-zsh/themes/custom.zsh-theme ~/GitHub/zsh-theme
	cd ~/GitHub/zsh-theme
	push "Updating"
}
