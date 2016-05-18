# - OBS
function cdobs {
  if [[ $USER == fusion809 ]]; then
    cd $HOME/OBS/home:fusion809
  elif [[ $USER == makerpm ]]; then
    cd $HOME/rpmbuild/SPECS
  fi
}

function cdrpm {
  if [[ $USER == makerpm ]]; then
    cd $HOME/rpmbuild
  elif [[ $USER == fusion809 ]]; then
    su -c "cd $HOME/rpmbuild" - makerpm
  fi
}

function cdobsae {
	cd $HOME/OBS/home:fusion809:arch_extra:extra
}

function cdobsa {
	cd $HOME/OBS/home:fusion809:arch_extra
}

function cdobsc {
	cd $HOME/OBS/home:fusion809:arch_extra:community
}

function cdobsp {
	cd $HOME/OBS/home:fusion809:arch_extra:python
}
