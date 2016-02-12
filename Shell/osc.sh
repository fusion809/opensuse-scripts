function oscb {
	osc build openSUSE_Tumbleweed
}

function vimb {
	cd /home/fusion809/OBS/home:fusion809/home:fusion809/vim
	sed -i -e "s/%define patchlevel  [0-9][0-9][0-9][0-9]/%define patchlevel  $1/g" vim.spec
	osc rm *.gz
	wget -c https://github.com/vim/vim/archive/v7.4.$1.tar.gz
	osc add v7.4.$1.tar.gz
	osc ci -m "Updating to version 7.4.$1"
}

function vimup {
	vimb $1 && oscb
}
