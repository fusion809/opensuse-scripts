function gitc {
	git clone https://github.com/fusion809/$1 $2
}

# GHUBM/editors
# vim
if ! `cat /proc/cpuinfo | grep hypervisor >/dev/null 2>&1`; then
	if ! [[ -d $EDT/vim ]]; then
       git clone https://github.com/fusion809/vim $EDT/vim
       mkdir -p $HOME/.vim/{autoload,bundle,colors,plugins,spell,syntax}
       cp $EDT/vim/.vimrc $HOME
       cp $EDT/vim/*.add $HOME/.vim/spell
       cp $EDT/vim/sh.vim $HOME/.vim/syntax
       curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
       git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
       wget -cq https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -O $HOME/.vim/colors/molokai.vim
	fi
else
	function sym {
		if [[ -d $HOME/$1 ]]; then
			rm -rf $HOME/$1
		elif [[ -f $HOME/$1 ]]; then
			rm $HOME/$1
		fi
		ln -sf /data/$1 $HOME/$1
	}
	sym ".config"
	sym ".local"
	sym ".vim"
	sym ".atom"
	sym ".vimrc"
	sym ".zsh_history"
	sym "Documents"
	sym "GitHub"
	sym "Music"
	sym "OBS"
	sym "Pictures"
	sym "Shell"
	sym "Videos"
	sym "VirtualBox VMs"
fi
