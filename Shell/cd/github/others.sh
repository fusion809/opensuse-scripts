function cdgo {
	cd $GHUBO/$1
}

for i in $HOME/Shell/cd/github/others/*.sh
do
  . "$i"
done
