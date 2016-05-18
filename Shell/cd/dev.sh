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
