while :
do
  unset verc
  unset verl
  unset VIMDIR
  unset DATE
  ORPWD=$PWD
  pushd ~/GitHub/vim # change into my local Vim git repo copy
  git checkout master
  git fetch -p
  git pull origin master # Update local repo
  # verc is the current patch version of Vim in vim.spec
  # verl is the latest patch version of Vim.
  VIMDIR=/home/fusion809/OBS/home:fusion809/vim
  verc=$(sed -n 's/%define patchlevel\s\s*//p' $VIMDIR/vim.spec)
  verl=$(git describe --abbrev=0 --tags | sed 's/v7.4.//g')
  popd
  DATE=$(TZ="Australia/Brisbane" date +"%r %A, %d %B %Y")
  if [[ $verc == $verl ]]; then
    echo "Vim is up-to-date as of $DATE"
  else
    pushd $VIMDIR
    sed -i -e "s/%define patchlevel  $verc/%define patchlevel  $verl/g" vim.spec
    osc rm v7.4.$verc.tar.gz
    wget -c https://github.com/vim/vim/archive/v7.4.$verl.tar.gz
    osc add v7.4.$verl.tar.gz
    osc ci -m "Updating to version 7.4.$verl"
    popd
  fi
  sleep 5m
done
