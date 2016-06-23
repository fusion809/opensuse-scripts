function szsh {
  source $HOME/.zshrc
}

function fzsh {
  mv .zsh_history .zsh_history_bad
  strings .zsh_history_bad > .zsh_history
  fc -R .zsh_history
}
