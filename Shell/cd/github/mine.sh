function cdgm {
	cd $GHUBM/$1
}

for i in $HOME/Shell/cd/github/mine/*.sh
do
  . "$i"
done
