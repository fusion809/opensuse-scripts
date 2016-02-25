# Update to latest stable Atom version
function atomup {
	unset verc
	unset verl
	if [[ $USER == makerpm ]]; then
		pushd $SPEC
		if ! [[ -d $HOME/atom ]]; then
			git clone https://github.com/atom/atom $HOME/atom
		fi
		pushd ~/atom
		git checkout stable
		git pull origin stable
		verl=$(git describe --tags | sed 's/^v//;s/-/./g')
		popd
		verc=$(sed -n 's/Version:\s\s\s\s\s\s\s\s*//p' $SPEC/atom.spec)
		if [[ $verc == $verl ]]; then
			echo "Atom is up-to-date"
		else
			sed -i -e "s/Version:\s\s\s\s\s\s\s\s$verc/Version:\s\s\s\s\s\s\s\s$verl/g" atom.spec
			rm ../SOURCES/v$verc.tar.gz
			wget -c https://github.com/atom/atom/archive/v$verl.tar.gz -O- > ../SOURCES/v$verl.tar.gz
			push "Bumping to $verl"
		fi
		popd
	else
		echo "You must run this command as the makerpm user! Run su - makerpm to change to this user."
	fi
}
