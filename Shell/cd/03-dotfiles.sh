function cdat {
  cd $HOME/.atom
}

function cdmen {
  cd $HOME/.config/menus/$1
}

function cdi {
  cd $HOME/.icons
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

function cdt {
  cd $HOME/.themes/$1
}
