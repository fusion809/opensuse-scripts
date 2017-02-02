function edpk {
  atom $PKG/$1
}

for i in $HOME/Shell/edit/atom/github/mine/packaging/*.sh
do
  . "$i"
done
