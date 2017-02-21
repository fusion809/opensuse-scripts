function edins {
  atom "$GHUBM/installers/$1"
}

for i in $HOME/Shell/edit/atom/github/mine/installers/*.sh
do
  . "$i"
done
