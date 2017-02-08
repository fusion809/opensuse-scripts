function gitc {
	git clone https://github.com/fusion809/$1 $2
}

if ! [[ -d $CFE ]]; then
	gitc CPP-Math-Projects $CFE
fi

# GHUBM/editors
# vim
if ! [[ -d $EDT/vim ]]; then
       git clone https://github.com/fusion809/vim $EDT/vim
       mkdir $HOME/.vim/{autoload,bundle,colors,plugins,spell,syntax}
       cp $EDT/vim/.vimrc $HOME
       cp $EDT/vim/*.add $HOME/.vim/spell
       cp $EDT/vim/sh.vim $HOME/.vim/syntax
       curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
       git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
       wget -cq https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -O $HOME/.vim/colors/molokai.vim
fi

# GHUBM/packaging
# AppImages
if ! [[ -d $PKG/AppImages ]]; then
	git clone https://github.com/fusion809/AppImages $PKG/AppImages
fi

# Code-OSS.AppImage
if ! [[ -d $PKG/Code-OSS.AppImage ]]; then
	git clone https://github.com/fusion809/Code-OSS.AppImage $PKG/Code-OSS.AppImage
fi

# GVim.AppImage
if ! [[ -d $PKG/GVim.AppImage ]]; then
	git clone https://github.com/fusion809/GVim.AppImage $PKG/GVim.AppImage
fi

# GHUBM/scripts/debian-scripts
if ! [[ -d $DS ]]; then
  	gitc debian-scripts $DS
fi

# GHUBM/scripts/fedora-scripts
if ! [[ -d $FS ]]; then
  	gitc fedora-scripts $FS
fi

# GHUBM/scripts/JScripts
if ! [[ -d $JS ]]; then
  	gitc JScripts $JS
fi

# GHUBM/scripts/python-scripts
if ! [[ -d $PY ]]; then
	gitc python-scripts $PY
fi

# GHUBM/websites/fusion809.github.io
if ! [[ -d $FGI ]]; then
	gitc fusion809.github.io $FGI
fi
