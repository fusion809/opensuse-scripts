# Update to latest stable Atom version
function atomup {
	unset verc
	unset verl
	cd $SPEC
	if [[ $USER == makerpm ]]; then
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
	fi
}
function oscb {
	osc build openSUSE_Tumbleweed
}

function vimup {
	if [[ $USER == fusion809 ]]; then
		unset verc
		unset verl
		unset VIMDIR
		ORPWD=$PWD
		pushd ~/GitHub/vim # change into my local Vim git repo copy
		git checkout master
		git fetch -p
		git pull origin master # Update local repo
		# verc is the current patch version of Vim in vim.spec
		# verl is the latest patch version of Vim.
		VIMDIR=/home/fusion809/OBS/home:fusion809/vim
		verc=$(sed -n 's/%define patchlevel\s\s*//p' $VIMDIR/vim.spec)
		verl=$(git describe --tags | sed 's/^v7.4.//;s/-/./g')
		popd
		if [[ $verc == $verl ]]; then
			echo "Vim is up-to-date"
		else
			pushd $VIMDIR
			sed -i -e "s/%define patchlevel  $verc/%define patchlevel  $verl/g" vim.spec
			osc rm v7.4.$verc.tar.gz
			wget -c https://github.com/vim/vim/archive/v7.4.$verl.tar.gz
			osc add v7.4.$verl.tar.gz
			osc ci -m "Updating to version 7.4.$verl"
			popd
		fi
	fi
}

function blockup {
	unset verc
	unset verl
	unset BLOCKDIR
	pushd ~/GitHub/blockify
	git checkout master
	git fetch -p
	git pull origin master
	BLOCKDIR=/home/fusion809/OBS/home:fusion809/blockify
	verc=$(sed -n 's/Version:\s\s\s\s\s\s\s\s\s*//p' $BLOCKDIR/blockify.spec)
	verl=$(git describe --abbrev=0 --tags | sed 's/v//g')
	popd
	pushd $BLOCKDIR
	if [[ $verc == $verl ]]; then
		echo "Blockify is up-to-date"
	else
		sed -i -e "s/Version:        $verc/Version:        $verl/g" blockify.spec
		osc rm v$verc.tar.gz
		wget -c https://github.com/mikar/blockify/archive/v$verl.tar.gz
		osc add v$verl.tar.gz
		osc ci -m "Updating to release $verl"
	fi
}
