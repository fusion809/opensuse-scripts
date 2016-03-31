# - OBS
function cdobs {
  if [[ $USER == fusion809 ]]; then
    cd ~/OBS/home:fusion809
  elif [[ $USER == makerpm ]]; then
    cd ~/rpmbuild/SPECS
  fi
}

function cdrpm {
  if [[ $USER == makerpm ]]; then
    cd ~/rpmbuild
  elif [[ $USER == fusion809 ]]; then
    su -c "cd ~/rpmbuild" - makerpm
  fi
}

function cdobsae {
	cd ~/OBS/home:fusion809:arch_extra:extra
}

function cdobsa {
	cd ~/OBS/home:fusion809:arch_extra
}

function cdobsc {
	cd ~/OBS/home:fusion809:arch_extra:community
}

function cdobsp {
	cd ~/OBS/home:fusion809:arch_extra:python
}
