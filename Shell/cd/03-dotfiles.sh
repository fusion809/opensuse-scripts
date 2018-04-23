function cdat {
  cd $HOME/.atom
}

function cdem {
	cd $HOME/.emacs.d
}

function cdmen {
  cd $HOME/.config/menus/$1
}

function cdi {
  cd $HOME/.icons/$1
}

function cdi3 {
    cd $HOME/.i3/$1
}

function cdls {
  cd $HOME/.local/share/$1
}

function cdap {
	cdls "applications/$1"
}

function cdld {
	cdls "desktop-directories/$1"
}

function cdli {
  cdls "icons/$1"
}

function cdlt {
  cdls "themes/$1"
}

function cdlw {
    cdls "wallpapers/$1"
}

function cdt {
  cd $HOME/.themes/$1
}

alias cdth=cdt
