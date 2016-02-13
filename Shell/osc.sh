function oscb {
	osc build openSUSE_Tumbleweed
}

function vimup {
	pushd ~/GitHub/vim # change into my local Vim git repo copy
	git pull origin master # Update local repo
	# verc is the current patch version of Vim in vim.spec
	# verl is the latest patch version of Vim.
	verc=$(sed -n 's/%define patchlevel\s\s*//p' /home/fusion809/OBS/home:fusion809/home:fusion809/vim/vim.spec)
	verl=$(git describe --tags | sed 's/^v7.4.//;s/-/./g')
	popd
	pushd /home/fusion809/OBS/home:fusion809/home:fusion809/vim
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
