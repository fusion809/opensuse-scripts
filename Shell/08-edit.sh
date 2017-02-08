function edsh {
	atom $HOME/Shell
}

for i in $HOME/Shell/edit/*.sh
do
	.  "$i"
done
