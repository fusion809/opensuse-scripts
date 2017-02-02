function empk {
  emacs "$PKG/$1"
}

for i in $HOME/Shell/edit/emacs/github/mine/packaging/*.sh
do
  . "$i"
done
