function emsc {
  emacs "$SCR/$1"
}

for i in $HOME/Shell/edit/emacs/github/mine/scripts/*.sh
do
  . "$i"
done
