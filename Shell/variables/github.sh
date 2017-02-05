export GHUB=$HOME/GitHub
export GHUBM=$GHUB/mine

# GHUBO
export GHUBO=$GHUB/others
if ! [[ -d $GHUBO ]]; then
  mkdir -p $GHUBO
fi

# EDT
export EDT=$GHUBM/editors
if ! [[ -d $EDT ]]; then
  mkdir -p $EDT
fi

# SCR
export SCR=$GHUBM/scripts
if ! [[ -d $SCR ]]; then
  mkdir -p $SCR
fi

# PKG
export PKG=$GHUBM/packaging
if ! [[ -d $PKG ]]; then
  mkdir -p $PKG
fi

# WEB
export WEB=$GHUBM/websites
if ! [[ -d $WEB ]]; then
  mkdir -p $WEB
fi

# ATO
export ATO=$GHUBM/atom
if ! [[ -d $ATO ]]; then
  mkdir -p $ATO
fi

# INS
export INS=$GHUBM/installers
if ! [[ -d $INS ]]; then
  mkdir -p $INS
fi

# FS
export FS=$SCR/fedora-scripts
if ! [[ -d $FS ]]; then
  git clone https://github.com/fusion809/fedora-scripts $FS
fi

# FS
export DS=$SCR/debian-scripts
if ! [[ -d $DS ]]; then
  git clone https://github.com/fusion809/debian-scripts $DS
fi

# JS
export JS=$SCR/JScripts
if ! [[ -d $JS ]]; then
  git clone https://github.com/fusion809/JScripts $JS
fi

# PY
export PY=$SCR/python-scripts
if ! [[ -d $PY ]]; then
  git clone https://github.com/fusion809/python-scripts $PY
fi

# FGI
export FGI=$WEB/fusion809.github.io
if ! [[ -d $FGI ]]; then
  if ! [[ -f $HOME/.clonelock ]]; then
    printf "The Hornery was not locally detected on this system; do you want to clone it to $FGI? [y/n]"
    read -p $fgilock
  fi
  if [[ $fgilock == "y" ]]; then
    git clone https://github.com/fusion809/fusion809.github.io $FGI
  else
    echo $fgilock > $HOME/.clonelock
  fi
fi
