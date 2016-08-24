# - OBS
function cdobs {
  if [[ $USER == fusion809 ]]; then
    cd $HOME/OBS/home:fusion809/$1
  elif [[ $USER == makerpm ]]; then
    cd $HOME/rpmbuild/SPECS/$1
  fi
}

function cdrpm {
  if [[ $USER == makerpm ]]; then
    cd $HOME/rpmbuild/$1
  elif [[ $USER == fusion809 ]]; then
    su -c "cd $HOME/rpmbuild/$1" - makerpm
  fi
}

function cdobsae {
	cd $HOME/OBS/home:fusion809:arch_extra:extra/$1
}

function cdobsa {
	cd $HOME/OBS/home:fusion809:arch_extra/$1
}

function cdobsc {
	cd $HOME/OBS/home:fusion809:arch_extra:community/$1
}

function cdobsp {
	cd $HOME/OBS/home:fusion809:arch_extra:python/$1
}
