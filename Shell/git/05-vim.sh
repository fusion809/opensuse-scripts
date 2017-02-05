# Update vim local repo

function cpv {
	cp $HOME/.vimrc $EDT/vim
        cp $HOME/.vim/syntax/sh.vim $EDT/vim
        cp $HOME/.vim/spell/en.utf-8.add $EDT/vim
}

function shvup {
	cpv && cdvm && push "$1" && cd -
}
