function cdg {
	cd $HOME/GitHub/$1
}

for i in $HOME/Shell/cd/github/*.sh
do
  . "$i"
done
