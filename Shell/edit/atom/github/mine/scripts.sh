function edsc {
  atom "$SCR/$1"
}

for i in $HOME/Shell/edit/atom/github/mine/scripts/*.sh
do
  . "$i"
done
