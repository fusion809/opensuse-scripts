# - OBS
function cdobs {
	cd $HOME/OBS/$1
}

function cdrpm {
  if [[ $USER == makerpm ]]; then
    cd $HOME/rpmbuild/$1
  elif [[ $USER == fusion809 ]]; then
    su -c "cd $HOME/rpmbuild/$1" - makerpm
  fi
}

function cdobsae {
	cdobs "home:fusion809:arch_extra:extra/$1"
}

function cdobsa {
	cdobs "home:fusion809:arch_extra/$1"
}

function cdobsc {
	cdobs "home:fusion809:arch_extra:community/$1"
}

function cdobsp {
	cdobs "home:fusion809:arch_extra:python/$1"
}
