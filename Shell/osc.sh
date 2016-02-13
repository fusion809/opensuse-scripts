function atomup {
	unset verc
	unset verl
	cd $SPEC
	if [[ $USER == makerpm ]]; then
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
	fi
}
function oscb {
	osc build openSUSE_Tumbleweed
}

function vimup {
	unset verc
	unset verl
	unset VIMDIR
	pushd ~/GitHub/vim # change into my local Vim git repo copy
	git pull origin master # Update local repo
	# verc is the current patch version of Vim in vim.spec
	# verl is the latest patch version of Vim.
	VIMDIR=/home/fusion809/OBS/home:fusion809/vim
	verc=$(sed -n 's/%define patchlevel\s\s*//p' $VIMDIR/vim.spec)
	verl=$(git describe --tags | sed 's/^v7.4.//;s/-/./g')
	popd
	pushd $VIMDIR
	if [[ $verc == $verl ]]; then
		echo "Vim is up-to-date"
	else
		sed -i -e "s/%define patchlevel  $verc/%define patchlevel  $verl/g" vim.spec
		osc rm *.gz
		wget -c https://github.com/vim/vim/archive/v7.4.$verl.tar.gz
		osc add v7.4.$verl.tar.gz
		osc ci -m "Updating to version 7.4.$verl"
	fi
	popd
}
