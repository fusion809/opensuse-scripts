if ! [[ -d $GHUBO ]]; then
	mkdir -p $GHUBO
fi

function cdgo {
	cd $GHUBO/$1
}

for i in $HOME/Shell/cd/github/others/*.sh
do
  . "$i"
done
